resource "google_compute_firewall" "allow_web_ssh" {
  name    = var.fw_teleport_name 
  network = google_compute_network.custom_vpc.name 

  allow {
    protocol = "tcp"
    ports    = ["22", "443"]
  }

  # This source range allows traffic from anywhere (0.0.0.0/0)
  # For better security, restrict "22" to your specific IP address
  source_ranges = ["0.0.0.0/0"]

  # This targets the VM based on the tag we added above
  target_tags = var.fw_tag 
}
