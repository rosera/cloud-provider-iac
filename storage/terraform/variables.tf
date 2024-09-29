# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
  default     = "us-central1"
}

## Google Cloud Storage properties
## -------------------------------------------------------


# Default value passed in
variable "gcs_bucket_name" {
  type        = string
  description = "Bucket name."
  default     = "bucket"
}

# Default value passed in
variable "gcs_force_destroy" {
  type        = bool 
  description = "GCS force bucket removal."
  default     = true 
}
