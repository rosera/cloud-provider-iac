data "google_compute_image" "os" {
  project = var.gce_project_id
  family  = var.gce_family_image
}

# Create the Free Tier compute instance
resource "google_compute_instance" "free_tier_vm" {
  name         = var.gce_instance_name
  machine_type = var.gce_machine_type # Free tier eligible machine type
  zone         = var.gcp_zone         # Choose a zone within the selected region
  tags         = var.gce_tags

  boot_disk {
    initialize_params {
      # https://cloud.google.com/compute/docs/images/os-details
      # image = var.gce_public_image
      image = data.google_compute_image.os.self_link
    }
  }

  network_interface {
    # network    = var.vpc_network_name 
    # network = google_compute_network.custom_network.self_link
    subnetwork = google_compute_subnetwork.custom_subnet.self_link
 
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
      # Env Var
      export USER="nix-dev"
      export HOME="/home/$USER"

      # Create a user
      useradd $USER -m -p Password01 -s /bin/bash -c "$USER Developer Account"

      # Install Nix package manager - Ensure $USER + $HOME env var are defined
      sh <(curl -L https://nixos.org/nix/install) --daemon --yes

      # Install required application packages
      /nix/var/nix/profiles/default/bin/nix-env -iA nixpkgs.pocketbase nixpkgs.cacert
    EOF
  }
}
