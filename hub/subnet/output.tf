output "subnet" {
    value= "${azurerm_subnet.hub-mgmt.address_prefix}"
}
output "subnet_id" {
    value= "${azurerm_subnet.hub-mgmt.id}"
}