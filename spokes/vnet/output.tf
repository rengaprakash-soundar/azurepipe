output "spoke_vnetname" {
    value ="${azurerm_virtual_network.spoke-vnet.*.name}"
}
output "spoke_vnetid" {
    value = "${azurerm_virtual_network.spoke-vnet.*.id}"
}
output "spoke_vnetcidr" {
    value = "${azurerm_virtual_network.spoke-vnet.*.address_space}"
}