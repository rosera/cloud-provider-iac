# Create the Free Tier compute instance
resource "google_compute_instance" "free_tier_vm" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type # Free tier eligible machine type
  zone         = var.gce_machine_zone # Choose a zone within the selected region

  boot_disk {
    initialize_params {
      # https://cloud.google.com/compute/docs/images/os-details
      # image = var.gce_public_image
      image = data.google_compute_image.provider.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Allow external access to the VM
      # nat_ip = "EXTERNAL"
    }
  }

  metadata = {
    startup-script = <<EOF
      #!/bin/bash
      # STARTUP-START
      # Update package lists and install required packages
      apt-get update -y
      apt-get install -y curl wget apt-transport-https ca-certificates gnupg lsb-release

      # Add Docker's official GPG key:
      apt-get update
      apt-get install ca-certificates curl
      # curl -s https://mailinabox.email/setup.sh | sudo bash

      # Env Var
      export USER="mail-admin"

      # Create a user
      useradd $USER -m -p Password01 -s /bin/bash -c 'Main Admin Account'

      # Add user to sudo group
      adduser $USER sudo

      # Download mailinabox software
      curl -s https://mailinabox.email/setup.sh -o /tmp/setup.sh 

      # STARTUP-END
    EOF
  }
}

data "google_compute_image" "provider" {
  project = var.gce_project
  family  = var.gce_family 
}
