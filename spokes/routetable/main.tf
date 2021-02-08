resource "azurerm_route_table" "spoke1-subnet-rt" {
  name                          = "spoke-subnet${count.index+1}-rt"
  count                         ="${length(var.subnet_id1)}"
  location                      = "${var.location}"
  resource_group_name           = "${var.rg}"
  disable_bgp_route_propagation = false
  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address ="192.168.3.84"
  }
}
resource "azurerm_subnet_route_table_association" "routetable-subnet" {
  subnet_id      = "${var.subnet_id1[count.index]}"
  count          ="${length(var.subnet_id1)}"
  route_table_id = "${azurerm_route_table.spoke1-subnet-rt[count.index].id}"
}