# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
  # US Regions: us-west1, us-central1, us-east1
}

## Google Compute Engine properties
## -------------------------------------------------------

# Default value passed in
variable "gce_instance_name" {
  type        = string
  description = "Google Cloud Engine instance name."
  default     = "teleport-vm"
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


variable "vpc_name" {
  type        = string
  description = "VPC Network name."
  default = "clz"
}

variable "vpc_subnet_name" {
  type        = string
  description = "VPC Network name."
  default = "remote"
}


variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR."
  default = "10.0.1.0/24"
}


variable "fw_teleport_name" {
  type        = string
  description = "FW Rule."
  default = "allow-teleport"
}

variable "fw_tag" {
  type        = list(string)
  description = "FW Tags."
  default = ["teleport-server"]
}
