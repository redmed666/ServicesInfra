output "gitlab_interfaces" {
  value = esxi_guest.gitlab.network_interfaces
}

output "gitlab_ips" {
  value = esxi_guest.gitlab.ip_address
}

output "ghostwriter_interfaces" {
  value = esxi_guest.ghostwriter.network_interfaces
}

output "ghostwriter_ips" {
  value = esxi_guest.ghostwriter.ip_address
}

output "mythic_interfaces" {
  value = esxi_guest.mythic.network_interfaces
}

output "mythic_ips" {
  value = esxi_guest.mythic.ip_address
}

output "others_interfaces" {
  value = esxi_guest.others.network_interfaces
}

output "others_ips" {
  value = esxi_guest.others.ip_address
}

