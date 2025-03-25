resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.bucket_location  # Ensure this matches the variable name
  storage_class = var.storage_class
  project       = var.project
}
