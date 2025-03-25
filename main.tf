provider "google" {
  project = "devops-practice-sm"
  region  = "us-central1"
}

module "gcs_bucket" {
  source      = "./modules/gcs_bucket"
  bucket_name = var.bucket_name
  location    = var.location
  project     = "devops-practice-sm"
}

output "created_bucket_name" {
  value = module.gcs_bucket.bucket_name
}
