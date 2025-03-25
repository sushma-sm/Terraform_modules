provider "google" { 
  project = var.project
  region  = "us-central1"
}

module "gcs_bucket" {
  source          = "./modules/gcs_bucket"
  bucket_name     = var.bucket_name
  bucket_location = var.bucket_location  
  storage_class   = var.storage_class
  project         = var.project 
}

output "created_bucket_name" {
  value = module.gcs_bucket.bucket_name
}
