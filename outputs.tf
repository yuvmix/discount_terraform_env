output "public_ips" {
  #  value = azurerm_linux_virtual_machine.dev_lvm[count.index].public_ip_address
  value = { for ip in azurerm_linux_virtual_machine.dev_lvm[*] : ip.name => ip.public_ip_address }
}
