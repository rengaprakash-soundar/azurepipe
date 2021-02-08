output "rg"{
    value = "${azurerm_resource_group.hub-nva-rg.name}"
}
output "location"{
    value = "${azurerm_resource_group.hub-nva-rg.location}"
}