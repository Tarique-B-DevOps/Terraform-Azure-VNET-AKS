module "vnet" {
  source                        = "./modules/vnet"
  resource_group_name           = "${var.resource_group_name}-${var.environment}"
  location                      = var.location
  vnet_name                     = "${var.vnet_name}-${var.environment}"
  vnet_address_space            = var.vnet_address_space
  public_subnet_name            = "${var.public_subnet_name}-${var.environment}"
  public_subnet_address_prefix  = var.public_subnet_address_prefix
  public_route_table_name       = "${var.public_route_table_name}-${var.environment}"
  nat_gateway_ip_name           = "${var.nat_gateway_ip_name}-${var.environment}"
  nat_gateway_name              = "${var.nat_gateway_name}-${var.environment}"
  private_subnet_name           = "${var.private_subnet_name}-${var.environment}"
  private_subnet_address_prefix = var.private_subnet_address_prefix
  private_nsg_name              = "${var.private_nsg_name}-${var.environment}"
  private_route_table_name      = "${var.private_route_table_name}-${var.environment}"
  tags                          = var.tags
}

module "aks_cluster" {
  source              = "./modules/aks"
  environment         = var.environment
  resource_group_name = module.vnet.resource_group_name
  location            = var.location
  aks_cluster_name    = "${var.aks_cluster_name}-${var.environment}"
  public_route_table  = module.vnet.public_route_table_id
  public_subnet_id    = module.vnet.public_subnet_id
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  service_cidr        = var.service_cidr
  dns_service_ip      = var.dns_service_ip
  tags                = var.tags
}
