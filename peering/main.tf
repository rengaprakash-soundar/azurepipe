resource "azurerm_virtual_network_peering" "peering1" {
  count                     = "${length(var.spoke2444)}"
  name                      = "peer${count.index}"
  resource_group_name       = "${var.rg}"
  virtual_network_name      = "${var.source1}"
  remote_virtual_network_id = "${var.spoke2444[count.index]}"
}

resource "azurerm_virtual_network_peering" "peering2" {
  name                      = "peer${count.index+1}"
  count                     = "${length(var.spoke1_name)}"
  resource_group_name       = "${var.rg1}"
  virtual_network_name      = "${var.spoke1_name[count.index]}"
  remote_virtual_network_id = "${var.vnet_id}"
}


