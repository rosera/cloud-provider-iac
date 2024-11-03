# Enable Googleapis

resource "google_project_service" "free_tier_api" {
  ## https://developer.hashicorp.com/terraform/language/functions/toset
  ## Removes duplicates from list
  for_each = toset(var.api_services_list)

  project = var.gcp_project_id
  service = each.key

  disable_dependent_services = var.api_disable_dependent
}

# Introduce a JIT delay for API enablement
## Add a Delay before creating a Workbench instance
resource "time_sleep" "wait_api_delay" {
  depends_on = [google_project_service.free_tier_api]
  ## create_duration = "60s"
  create_duration = var.api_create_duration
}
