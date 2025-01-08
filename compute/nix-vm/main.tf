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

  # Run Script
  metadata = {
    startup-script = <<EOF
      #!/bin/bash
      # STARTUP-START
      # Update package lists and install required packages
      # Env Var
      export USER="nix-dev"
      export HOME="/home/$USER"

      # Create a user
      useradd $USER -m -p Password01 -s /bin/bash -c "$USER Developer Account"

      # Install Nix package manager - Ensure $USER + $HOME env var are defined
      sh <(curl -L https://nixos.org/nix/install) --daemon --yes

      # Install required application packages
      /nix/var/nix/profiles/default/bin/nix-env -iA nixpkgs.nodejs_22 nixpkgs.firebase-tools nixpkgs.cacert
      # nix-env -iA nixpkgs.nodejs_22 nixpkgs.firebase-tools nixpkgs.cacert
    EOF
  }

}

data "google_compute_image" "debian" {
  project = "debian-cloud"
  family  = "debian-11"
}
