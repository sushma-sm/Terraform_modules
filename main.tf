provider "google" {
  project = "devops-practice-sm"
  region  = "us-central1"
}

module "gcs_bucket" {
  source      = "./modules/gcs_bucket"
  bucket_name = "my-terraform-bucket"
  location    = "US"
}

output "created_bucket_name" {
  value = module.gcs_bucket.bucket_name
}
