# Create the Free Tier compute instance
resource "google_compute_instance" "free_tier_vm" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type # Free tier eligible machine type
  zone         = var.gce_machine_zone # Choose a zone within the selected region

  boot_disk {
    initialize_params {
      # https://cloud.google.com/compute/docs/images/os-details
      # image = var.gce_public_image
      image = data.google_compute_image.debian.self_link
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
      apt-get install -y curl kubectl wget apt-transport-https ca-certificates gnupg lsb-release

      # Add Docker's official GPG key:
      apt-get update
      apt-get install ca-certificates curl
      install -m 0755 -d /etc/apt/keyrings
      curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
      chmod a+r /etc/apt/keyrings/docker.asc

      # Add the repository to Apt sources:
      echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

      apt-get update

      # Docker installation
      apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

      # Install Minikube
      curl -fsSL https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o /usr/local/bin/minikube
      chmod +x /usr/local/bin/minikube   

      # Env Var
      export USER="k8s-dev"

      # Create a user
      useradd $USER -m -p Password01 -s /bin/bash -c 'Kubernetes Account'

      # Add user to docker group
      groupadd docker
      usermod -aG docker $USER && newgrp docker

      # Start Minikube
      # minikube start
      # STARTUP-END
    EOF
  }
}

data "google_compute_image" "debian" {
  project = "debian-cloud"
  family  = "debian-11"
}
