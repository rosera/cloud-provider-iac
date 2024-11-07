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

## Billing API properties 
## -------------------------------------------------------

variable "gcp_billing_account" {
  type        = string
  description = "Billing account."
  # default = "Example billing budget."
}

# Default value passed in
variable "gcp_billing_budget_name" {
  type        = string
  description = "Example billing budget."
  # Free Tier: us-east1, us-west1, us-central1
  # General: https://cloud.google.com/storage/docs/locations
  default = "Example billing budget."
}

# Default value passed in
variable "gcp_billing_currency_code" {
  type        = string
  description = "Billing currency code."
  default = "USD"
}

# Default value passed in
variable "gcp_billing_units" {
  type        = string 
  description = "Billing account units."
  default     = "1"
}

# Default value passed in
variable "gcp_billing_email" {
  type        = string
  description = "Billing notification email."
  default = "tester@gmail.com"
}

# Default value passed in
variable "gcp_billing_pubsub" {
  type        = string
  description = "Billing notification pubsub."
  default = "api-topic"
}

## Google API enable properties 
## -------------------------------------------------------

# Default value passed in
variable "api_services_list" {
  type        = list(string)
  description = "List of Googleapis to enable."
  default = [
    "cloudbilling.googleapis.com",
    "billingbudgets.googleapis.com",
  ]
}

# Default value passed in
variable "api_disable_dependent" {
  type        = string
  description = "Api dependencies state is disabled"
  default     = false
}

# Default value passed in
variable "api_create_duration" {
  type        = string
  description = "Api wait duration"
  default     = "120s" 
}

