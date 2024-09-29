# Create the Cloud Storage bucket
resource "google_storage_bucket" "function_code_bucket" {
  name          = "${var.gcp_project_id}-${var.gcs_bucket_name}"
  location      = var.gcp_region 
  force_destroy = var.gcs_force_destroy 
}

