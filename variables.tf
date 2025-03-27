variable "bucket_name" {
  description = "Name of the GCS bucket"
  type        = string
}

variable "bucket_location" {  #  Must match the module's variable
  description = "Location of the GCS bucket"
  type        = string
}

variable "storage_class" {
  description = "Storage class of the GCS bucket"
  type        = string
}

variable "project" {
  description = "GCP Project ID"
  type        = string
}
