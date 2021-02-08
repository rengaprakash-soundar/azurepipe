resource "azurerm_virtual_network" "spoke-vnet" {
  name                = "${var.spoke_name1[count.index]}"
  count               ="${length(var.spoke_cidr)}"
  location            = "${var.location}"
  resource_group_name = "${var.rg}"
  address_space       = ["${lookup(var.spoke_cidr,var.spoke_name1[count.index],0)}"]
}
