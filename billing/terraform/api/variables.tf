# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "us-central1"
}

## Google API enable properties 
## -------------------------------------------------------

# Default value passed in
variable "api_services_list" {
  type        = list(string)
  description = "List of Googleapis to enable."
  default = [
    "cloudbilling.googleapis.com",
  ]
}

# Default value passed in
variable "api_disable_dependent" {
  type        = string
  description = "Api dependencies state is disabled"
  default     = false
}
