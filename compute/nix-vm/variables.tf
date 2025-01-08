# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
}

## Google Compute Engine properties
## -------------------------------------------------------

# Default value passed in
variable "gce_instance_name" {
  type        = string
  description = "Google Cloud Engine instance name."
  default     = "dev-vm"
}

# Default value passed in
variable "gce_machine_type" {
  type        = string
  description = "Google Cloud Engine machine type."
  default     = "e2-micro"
  # default     = "e2-small"
}

# Default value passed in
variable "gce_machine_zone" {
  type        = string
  description = "Google Cloud Engine machine type."
}

# Default value passed in
# Ref: https://cloud.google.com/compute/docs/images/os-details
variable "gce_public_image" {
  type        = string
  description = "Google Cloud Engine compute image."
  default = "debian-cloud/debian-11" 
  # default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "gce_project" {
  type        = string
  description = "GCE Project."
  default = "debian-cloud"
}

variable "gce_image" {
  type        = string
  description = "Google Cloud Engine compute image."
  default = "debian-11"
}
