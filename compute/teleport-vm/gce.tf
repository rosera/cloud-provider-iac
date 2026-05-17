# Create the Free Tier compute instance
resource "google_compute_instance" "free_tier_vm" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type # Free tier eligible machine type
  zone         = var.gce_machine_zone # Choose a zone within the selected region

  tags = ["teleport-server"]

  boot_disk {
    initialize_params {
      # https://cloud.google.com/compute/docs/images/os-details
      # image = var.gce_public_image
      image = data.google_compute_image.debian.self_link
    }
  }

  # Error: Error creating instance: googleapi: Error 400: Invalid value for field 'resource.networkInterfaces[0].subnetwork': ''. 
  # Network interface must specify a subnet if the network resource is in custom subnet mode.
  network_interface {
    # network = google_compute_network.custom_vpc.name 
    subnetwork = google_compute_subnetwork.custom_subnet.id
    access_config {
      # Allow external access to the VM
      # nat_ip = "EXTERNAL"
    }
  }

}

data "google_compute_image" "debian" {
  project = "debian-cloud"
  family  = "debian-11"
}
