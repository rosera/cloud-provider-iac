# Default value passed in
variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
  default     = "roselabs-poc"
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
  default     = "us-central1"
}

variable "gcp_zone" {
  type        = string
  description = "Region to create resources in."
  default     = "us-central1-a"
}

## Google Compute Engine properties
## -------------------------------------------------------

# Default value passed in
variable "gce_instance_name" {
  type        = string
  description = "Google Cloud Engine instance name."
  default     = "vm-pb"
}

# Default value passed in
variable "gce_machine_type" {
  type        = string
  description = "Google Cloud Engine machine type."
  default     = "e2-micro"
  # default     = "e2-small"
}

# Default value passed in
# Ref: https://cloud.google.com/compute/docs/images/os-details
variable "gce_public_image" {
  type        = string
  description = "Google Cloud Engine compute image."
  # default = "ubuntu-os-cloud/ubuntu-2204-lts"
  default = "debian-cloud/debian-11-buster"
}

variable "gce_project_id" {
  type        = string
  description = "GCE Project."
  default     = "debian-cloud"
}

variable "gce_family_image" {
  type        = string
  description = "Google Cloud Engine compute image."
  default     = "debian-12"
}

variable "gce_tags" {
  type        = list 
  description = "Google Cloud Engine Tag list."
  default     = ["lab-vm", "internal-apps", "app-servers"]
}

## VPC Network properties
## -------------------------------------------------------

variable "vpc_network_name" {
  type        = string
  description = "Google VPC network name."
  default     = "data"
}

variable "vpc_subnet_name" {
  type        = string
  description = "Google VPC subnet name."
  default     = "prod"
}

# Default value passed in
variable "vpc_network_description" {
  type        = string
  description = "Custom VPC network."
  default     = "Custom network" 
}

# Default value passed in
variable "vpc_subnet_cidr" {
  type        = string
  description = "VPC subnetwork to cidr."
  # default     = "10.128.0.0/16" 
  default     = "10.1.0.0/24" 
}

# Default value passed in
variable "vpc_private_google_access" {
  type        = bool 
  description = "VPC Private Google Access."
  default     = true 
}

# Default value passed in
variable "vpc_flow_logs" {
  type        = bool 
  description = "VPC Flow Logs."
  default     = false 
}

## Firewall properties
## -------------------------------------------------------

variable "fwr_rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  # default     = []
  type = list(object({
    fwr_name                    = string
    fwr_description             = string
    fwr_direction               = string
    fwr_priority                = number
    fwr_source_ranges                  = list(string)
    fwr_source_tags             = list(string)
    fwr_source_service_accounts = list(string)
    fwr_target_tags             = list(string)
    fwr_target_service_accounts = list(string)
    allow = list(object({
      protocol = string
      ports    = list(string)
    }))
    deny = list(object({
      protocol = string
      ports    = list(string)
    }))
    log_config = object({
      metadata = string
    })
  }))
}


# Default value passed in
variable "fwr_name" {
  type        = string
  description = "Name of rule."
  default     = "allow-ssh-network" 
}

# Default value passed in
variable "fwr_network" {
  type        = string
  description = "Custom VPC network."
  default     = "default" 
}

# Default value passed in
variable "fwr_source_range" {
  type        = list 
  description = "Network range."
  default     = [ "0.0.0.0/0" ] 
}

# Default value passed in
variable "fwr_direction" {
  type        = string
  description = "Direction of traffic."
  default     = "INGRESS" 
}

# Default value passed in
variable "fwr_protocol" {
  type        = string
  description = "Traffic protocol."
  default     = "tcp" 
}

# Default value passed in
variable "fwr_ports" {
  type        = list
  description = "Traffic protocol."
  default     = [ "22" ] 
}
