output "hub_vnet" {
    value = "${azurerm_virtual_network.hub-vnet.name}"
}
output "vnet_id" {
    value = "${azurerm_virtual_network.hub-vnet.id}"
}
output "hub_cidr" {
    value = "${azurerm_virtual_network.hub-vnet.address_space}"
}
output "vnet_name" {
    value = "${azurerm_virtual_network.hub-vnet.name}"
}