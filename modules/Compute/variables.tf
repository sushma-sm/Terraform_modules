variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type (e.g., e2-medium, n1-standard-1)"
  type        = string
}

variable "zone" {
  description = "GCP zone where the VM will be created"
  type        = string
}

variable "image" {
  description = "OS image for the VM (e.g., debian-cloud/debian-11)"
  type        = string
}

variable "disk_size" {
  description = "Boot disk size in GB"
  type        = number
  default     = 20
}
