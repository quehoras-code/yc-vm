output "yc-vm_ips" {
  value = yandex_compute_instance.yc-vm[*].network_interface.0.nat_ip_address
}

output "yc-vm_int_ip" {
  value = yandex_compute_instance.yc-vm[*].network_interface[0].ip_address
}

output "instances" {
  description = "List of all yc-vm instances"
  value       = yandex_compute_instance.yc-vm[*]
}