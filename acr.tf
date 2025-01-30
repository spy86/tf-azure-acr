resource "azurerm_container_registry" "main" {
  name                = "${var.environment}${var.acr_name}"
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
  sku                 = var.acr_tier
  admin_enabled       = var.acr_admin_enabled
  tags                = var.default_tags
}
