resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_container_registry" "acr_repo" {
  name                = var.acr_repo_name
  resource_group_name = "${var.resource_group_name}-${var.environment}"
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = true


  tags = var.tags
}
