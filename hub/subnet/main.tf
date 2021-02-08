resource "azurerm_subnet" "hub-mgmt" {
  name                 = "hub-subnet"
  resource_group_name  = "${var.rg}"
  virtual_network_name = "${var.hub_vnet}"
  address_prefix       = "${var.subnet1}"
}
