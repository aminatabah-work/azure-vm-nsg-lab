output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}

output "network_security_group_name" {
  value = azurerm_network_security_group.nsg.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}
