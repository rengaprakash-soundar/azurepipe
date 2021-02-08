
output "spoke_subnetid" {
    value = "${azurerm_subnet.spoke1-subnet.*.id}"
}
output "spoke_subnet" {
    value = "${azurerm_subnet.spoke1-subnet.*.address_prefix}"
}