resource "azurerm_resource_group" "hub-nva-rg" {
  name     = var.hub_rg
  location = var.hub_location
}
