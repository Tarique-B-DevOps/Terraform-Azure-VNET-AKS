resource "azurerm_user_assigned_identity" "identity" {
  name                = "${var.aks_cluster_name}-identity"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_role_assignment" "network_contributor" {
  principal_id         = azurerm_user_assigned_identity.identity.principal_id
  role_definition_name = "Network Contributor"
  scope                = var.public_route_table
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_dns_prefix

  default_node_pool {
    name           = var.environment
    node_count     = var.node_count
    vm_size        = var.node_vm_size
    vnet_subnet_id = var.public_subnet_id
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.identity.id]
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
    service_cidr      = var.service_cidr
    dns_service_ip    = var.dns_service_ip
  }

  tags = var.tags
}
