resource "azurerm_subnet" "spoke1-subnet" {
  name                 = "spoke-${count.index+1}"
  count               = "${length(var.spoke1_subnet)}"
  resource_group_name  = "${var.rg}"
  virtual_network_name = "${element(var.spoke_name,count.index)}"
  address_prefix      = "${var.spoke1_subnet[count.index]}"
}
