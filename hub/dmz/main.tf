resource "azurerm_subnet" "hub-dmz" {
  name                 = "dmz"
  resource_group_name  = "${var.rg}"
  virtual_network_name = "${var.hub_vnet}"
  address_prefix       = "${var.dmz1}"
}