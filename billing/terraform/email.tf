# Enable Email

resource "google_monitoring_notification_channel" "notification_channel_email" {
  type         = "email"
  display_name = "Email Notification Channel"

  labels = {
   email_address = var.gcp_billing_email
  }
}
