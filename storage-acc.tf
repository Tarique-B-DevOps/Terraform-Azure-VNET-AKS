# Not in use

# resource "azurerm_storage_account" "storage_acc" {
#   name                     = "noteit-infra-states"
#   resource_group_name      = "${var.resource_group_name}-${var.environment}"
#   location                 = var.location
#   account_tier             = var.acr_sku
#   account_replication_type = "LRS"
# }

# resource "azurerm_storage_container" "storage_container" {
#   name                  = "tfstates"
#   storage_account_name  = azurerm_storage_account.example.name
#   container_access_type = "private"
# }