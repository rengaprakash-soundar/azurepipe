resource "azurerm_resource_group" "spoke-rg" {
  name     = "${var.rg}"
  location = "${var.location}"
}
