output "generated_vm_password" {
  value       = random_password.user_password.result
  description = "The plain-text password generated for the nix-dev user."
  sensitive   = true 
}
