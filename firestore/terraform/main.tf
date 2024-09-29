# Create the Firestore database

resource "google_firestore_database" "free_tier_database" {
  project     = var.gcp_project_id 
  name        = var.firestore_database_name 
  location_id = var.firestore_location_id 
  type        = var.firestore_database_type 
}
