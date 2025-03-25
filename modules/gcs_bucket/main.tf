resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
  location = var.location
}
