output "subnet_id" {
  description = "id da subnet criada na azure"
  value       = azurerm_subnet.subnet

}

output "security_group_id" {
  description = "id da network security group criada na azure "
  value       = azurerm_network_security_group.nsg.id
}
