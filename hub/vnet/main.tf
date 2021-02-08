resource "azurerm_virtual_network" "hub-vnet" {
  name                =   "hub-vnet"
  location            = "${var.location}"
  resource_group_name = "${var.rg}"
  address_space       = "${var.hub_cidr}"

}