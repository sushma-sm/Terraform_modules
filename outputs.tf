output "bucket_name" {
  value = module.gcs_bucket.bucket_name  #  This correctly references the module output
}
