output "vm_name" {
  description = "The name of the VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "vm_external_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}
