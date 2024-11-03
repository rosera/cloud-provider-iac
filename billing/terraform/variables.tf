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

variable "gcp_billing_account" {
  type        = string
  description = "Billing account."
  # default = "Example billing budget."
}

# Default value passed in
variable "gcp_billing_budget" {
  type        = string
  description = "Example billing budget."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "Example billing budget."
}

# Default value passed in
# Default value passed in
variable "gcp_biling_units" {
  type        = string
  description = "Billing notification email."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "tester@gmail.com"
}

# Default value passed in
variable "gcp_biling_email" {
  type        = string
  description = "Billing notification email."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "tester@gmail.com"
}

# Default value passed in
variable "gcp_billing_pubsub" {
  type        = string
  description = "Billing notification pubsub."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "billing-topic"
}
