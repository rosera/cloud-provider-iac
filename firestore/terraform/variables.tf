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

## Google Cloud Firestore properties
## -------------------------------------------------------

# Default value passed in
variable "firestore_database_name" {
  type        = string
  description = "Firestore database name."
  default     = "test"
}

# Default value passed in
variable "firestore_location_id" {
  type        = string
  description = "Bucket name."
  default     = "nam5"
}

# Default value passed in
variable "firestore_database_type" {
  type        = string
  description = "Firestore database type."
  # TYPE: FIRESTORE_NATIVE | DATASTORE_MODE
  default     = "FIRESTORE_NATIVE"
}

