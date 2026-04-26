# Create the Custom VPC
resource "google_compute_network" "custom_vpc" {
  name                    = var.vpc_name 
  auto_create_subnetworks = false # Best practice: define subnets manually
}

# Create a Subnet within the VPC
resource "google_compute_subnetwork" "custom_subnet" {
  name          = var.vpc_subnet_name 
  ip_cidr_range = var.vpc_cidr 
  region        = var.gcp_region
  network       = google_compute_network.custom_vpc.id
}
