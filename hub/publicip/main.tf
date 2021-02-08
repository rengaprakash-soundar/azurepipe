resource "azurerm_public_ip" "publicip1" {
  name                = "hubPublicIp1"
  resource_group_name = "${var.rg}"
  location            = "${var.location}"
  allocation_method   = "Dynamic"

}