# Output the External IP address
output "vm_external_ip" {
  value       = google_compute_instance.free_tier_vm.network_interface[0].access_config[0].nat_ip
  description = "The public IP address of the VM"
}

# Output a ready-to-use SSH command
output "ssh_command" {
  value       = "ssh USER@${google_compute_instance.free_tier_vm.network_interface[0].access_config[0].nat_ip}"
  description = "Command to SSH into the instance"
}
