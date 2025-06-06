// locals.tf

locals {
  custom_fwr_rules = [
    {
      fwr_name                  = "custom-allow-ssh-from-trusted-ips"
      fwr_description           = "Allow SSH (port 22) from specific trusted IP ranges."
      fwr_direction             = "INGRESS"
      fwr_priority              = 1000
      fwr_source_ranges         = ["203.0.113.0/24", "198.51.100.0/24"]
      fwr_source_tags           = null 
      fwr_source_service_accounts = null 
      fwr_target_tags           = ["web-servers", "app-servers"]
      fwr_target_service_accounts = null 
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
      deny = []
      log_config = {
        metadata = "INCLUDE_ALL_METADATA"
      }
    },
    {
      fwr_name                  = "custom-deny-all-egress-except-http-https"
      fwr_description           = "Deny all outbound traffic except HTTP/S from specific instances."
      fwr_direction             = "EGRESS"
      fwr_priority              = 900

# Error: Error creating Firewall: googleapi: 
# Error 400: Should not specify source tag or service account for egress direction., badRequest

      fwr_source_ranges         = null 
      fwr_source_tags           = null 
      fwr_source_service_accounts = null 
      fwr_target_tags           = ["internal-apps"] 
      fwr_target_service_accounts = null 
      allow = [
        {
          protocol = "tcp"
          ports    = ["80", "443"]
        }
      ]
      deny = [
        {
          protocol = "all"
          ports    = []
        }
      ]
      log_config = {
        metadata = "EXCLUDE_ALL_METADATA"
      }
    }
  ]
}
