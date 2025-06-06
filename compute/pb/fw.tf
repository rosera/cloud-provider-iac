# Custom Firewall
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
# https://github.com/terraform-google-modules/terraform-google-network/tree/master/modules/firewall-rules

resource "google_compute_firewall" "rules" {
  # Iterate through the list of objects
  # for_each                = { for r in var.fwr_rules : r.fwr_name => r }
  for_each                = { for r in local.custom_fwr_rules : r.fwr_name => r }
  # for_each = { for rule in local.custom_fwr_rules : rule.fwr_name => rule } # Directly using the local variable

  # General properties
  project = var.gcp_project_id
  network = google_compute_network.custom_network.self_link

  # List of objects
  name                    = each.value.fwr_name
  description             = each.value.fwr_description
  direction               = each.value.fwr_direction
  source_ranges           = each.value.fwr_direction == "INGRESS" ? each.value.fwr_source_ranges : null
  destination_ranges      = each.value.fwr_direction == "EGRESS" ? each.value.fwr_source_ranges : null
  source_tags             = each.value.fwr_source_tags
  source_service_accounts = each.value.fwr_source_service_accounts
  target_tags             = each.value.fwr_target_tags
  target_service_accounts = each.value.fwr_target_service_accounts
  priority                = each.value.fwr_priority

  # Process the list of objects
  dynamic "allow" {
    for_each = lookup(each.value, "allow", [])
    content {
      protocol = allow.value.protocol
      ports    = lookup(allow.value, "ports", null)
    }
  }
}
