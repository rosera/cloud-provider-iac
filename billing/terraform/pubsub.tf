# Enable PubSub 

resource "google_pubsub_topic" "budget_alerts" {
  name = var.gcp_billing_pubsub 
}


## resource "google_pubsub_topic_iam_member" "monitoring_publisher" {
##   topic    = google_pubsub_topic.budget_alerts.name
##   role     = "roles/pubsub.publisher"
##   member   = "serviceAccount:service-${data.google_project.project.number}@gcp-sa-monitoring-notification.iam.gserviceaccount.com"
## }


resource "google_monitoring_notification_channel" "notification_channel_pubsub" {
  # description  = "Test pubsub notification" 
  display_name = "budget-alert-testing"
  # enabled      = true
  # force_delete = false

  labels = {
    # REGEX: "projects/[^/]+/topics/[^/]+" 
    # projects/roselabs-poc/topics/api-topic
    topic = "projects/${var.gcp_project_id}/topics/${var.gcp_billing_pubsub}"
    
    # topic = google_pubsub_topic.budget_alerts.id
  }
  
  # project      = var.gcp_project_id
  type         = "pubsub"
  
  # verification_status = "VERIFIED"
}
