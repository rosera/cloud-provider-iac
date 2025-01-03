# Enable Billing

data "google_billing_account" "account" {
  # billing_account = "000000-0000000-0000000-000000"
  billing_account = var.gcp_billing_account

  # Make sure API is enabled
  depends_on = [ time_sleep.wait_api_delay ] 
}

data "google_project" "project" {
}

resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.account.id
  # display_name    = "Example Billing Budget"
  display_name    = var.gcp_billing_budget_name

  # budget_filter {
  #  projects = ["projects/${data.google_project.project.number}"]
  # }

  amount {
    specified_amount {
      currency_code = "USD"
      units         = "100000"
      # currency_code = var.gcp_billing_currency_code
      # units         = var.gcp_billing_units
    }
  }

  # threshold_rules {
  #   threshold_percent = 1.0
  # }

  # threshold_rules {
  #  threshold_percent = 1.0
  #  spend_basis       = "FORECASTED_SPEND"
  # }

#  all_updates_rule {
#    monitoring_notification_channels = [
#      google_monitoring_notification_channel.notification_channel_email.id,
#      google_monitoring_notification_channel.notification_channel_pubsub.id
#    ]
#    disable_default_iam_recipients = true
#  }

  # Make sure API is enabled
  depends_on = [ time_sleep.wait_api_delay ] 
}


# resource "google_monitoring_notification_channel" "notification_channel_email" {
#  display_name = "Email Notification Channel"
#  type         = "email"

#  labels = {
#    email_address = var.gcp_billing_email 
#   }
# }

# resource "google_monitoring_notification_channel" "notification_channel_pubsub" {
#   display_name = "Pubsub Notification Channel"
#  type         = "pubsub"

#  labels = {
#    topic = "projects/${var.gcp_project_id}/topics/${var.gcp_billing_pubsub}"
#  }
# }
