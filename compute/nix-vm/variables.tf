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
  # default     = "e2-small"
  default     = "e2-micro"
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
  default = "debian-12"
}

# variable "vm_user_password" {
#   type        = string
#   description = "The password for the created VM user. Note: GCP startup scripts expect a pre-hashed password for 'useradd -p'."
#   sensitive   = true # Hides the password from console outputs
# }

variable "nix_packages" {
  type        = list(string)
  description = "A list of Nix packages to install (e.g., ['nixpkgs.nodejs_22', 'nixpkgs.firebase-tools'])"
  default     = ["nixpkgs.nodejs_22", "nixpkgs.firebase-tools", "nixpkgs.cacert"]
}
