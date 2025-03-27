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
module "compute_instance" {
  source        = "./modules/Compute"
  vm_name       = var.vm_name
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  disk_size     = var.disk_size
}

output "created_bucket_name" {
  value = module.gcs_bucket.bucket_name
}
