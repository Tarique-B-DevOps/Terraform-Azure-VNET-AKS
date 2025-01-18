output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.this.id
}

output "public_route_table_id" {
  value = azurerm_route_table.public.id

}

output "public_subnet_id" {
  description = "The ID of the Public Subnet"
  value       = azurerm_subnet.public.id
}

output "private_subnet_id" {
  description = "The ID of the Private Subnet"
  value       = azurerm_subnet.private.id
}

output "resource_group_id" {
  value = azurerm_resource_group.this.id

}
output "resource_group_name" {
  value = azurerm_resource_group.this.name

}
