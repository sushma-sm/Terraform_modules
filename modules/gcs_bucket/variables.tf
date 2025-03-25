variable "project" {
  description = "The GCP project ID where the bucket will be created"
  type        = string
}
variable "bucket_name" {
  description = "Base name for the storage bucket"
  type        = string
}

variable "location" {
  description = "Location for the storage bucket"
  type        = string
  default     = "US"
}
