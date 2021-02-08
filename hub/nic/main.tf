resource "azurerm_network_interface" "hub-nic" {
  name                 = "hub-nic"
  location             = "${var.location}"
  resource_group_name  = "${var.rg}"
  enable_ip_forwarding = true

  ip_configuration {
    name                          = "hva-nva"
    subnet_id                     = "${var.dmz_id}"
    private_ip_address_allocation = "Static"
    private_ip_address            = "${var.private_ip}"
  }
}