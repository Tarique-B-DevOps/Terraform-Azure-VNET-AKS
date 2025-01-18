# Common Vars Values
environment = "staging"
tags = {
  "environment"    = "Staging"
  "application"    = "NoteIt"
  "deploymentType" = "Terraform/Jenkins"
}

# VNET Vars values
resource_group_name           = "noteit-resource-group"
location                      = "East US"
vnet_name                     = "noteit-vnet"
vnet_address_space            = ["10.0.0.0/16"]
public_subnet_name            = "noteit-public-subnet"
public_subnet_address_prefix  = ["10.0.1.0/24"]
public_route_table_name       = "noteit-public-route-table"
nat_gateway_ip_name           = "noteit-nat-gateway-ip"
nat_gateway_name              = "noteit-nat-gateway"
private_subnet_name           = "noteit-private-subnet"
private_subnet_address_prefix = ["10.0.2.0/24"]
private_nsg_name              = "noteit-private-subnet-nsg"
private_route_table_name      = "noteit-private-route-table"

#AKS Cluster Vars values
aks_cluster_name   = "noteit-cluster"
cluster_dns_prefix = "noteit"
node_count         = 1
node_vm_size       = "Standard_D2_v2"
service_cidr       = "10.1.0.0/16"
dns_service_ip     = "10.1.0.10"

# ACR Vars Values
acr_repo_name = "noteit"
acr_sku       = "Standard"

