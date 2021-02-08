resource "azurerm_network_interface" "testnic" {
    name                      = "myNIC"
    location                  = "${var.location}"
    resource_group_name       = "${var.rg}"

    ip_configuration {
        name                          = "myNicConfiguration"
        subnet_id                     = "${var.subnet_id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${var.public_id}"
    }

}
resource "azurerm_network_interface_security_group_association" "sg-connection" {
    network_interface_id      = "${azurerm_network_interface.testnic.id}"
    network_security_group_id = "${var.sg_id1}"
}
