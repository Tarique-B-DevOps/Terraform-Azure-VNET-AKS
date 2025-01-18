output "resource_group_name" {
  value = module.vnet.resource_group_name

}
output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.vnet.vnet_id
}
output "public_route_table" {
  value = module.vnet.public_route_table_id

}
output "public_subnet_id" {
  description = "The ID of the Public Subnet"
  value       = module.vnet.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the Private Subnet"
  value       = module.vnet.private_subnet_id
}

output "cluster_name" {
  value = module.aks_cluster.cluster_name

}

output "cluster_id" {
  value = module.aks_cluster.cluster_id

}

output "client_certificate" {
  value     = module.aks_cluster.client_certificate
  sensitive = true

}

output "kube_config" {
  value     = module.aks_cluster.kube_config
  sensitive = true
}

output "acr_repo_name" {
  value = azurerm_container_registry.acr_repo.name

}

output "acr_repo_login_server" {
  value = azurerm_container_registry.acr_repo.login_server

}