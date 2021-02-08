output "rg"{
    value = "${azurerm_resource_group.spoke-rg.name}"
}
output "location"{
    value = "${azurerm_resource_group.spoke-rg.location}"
}