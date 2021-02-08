resource "azurerm_route_table" "hub-subnet-rt" {
  name                          = "hub-subnet-rt"
  location                      = "${var.location}"
  resource_group_name           = "${var.rg}"
  disable_bgp_route_propagation = false
  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "internet"
  }
}
resource "azurerm_subnet_route_table_association" "subnet-connection" {
  subnet_id      = "${var.subnet_id}"
  route_table_id = "${azurerm_route_table.hub-subnet-rt.id}"
}