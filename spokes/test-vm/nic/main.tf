resource "azurerm_network_interface" "spokenic" {
    name                      = "spokesNIC${count.index}"
    count                     = "${length(var.subnet_id)}"
    location                  = "${var.location}"
    resource_group_name       = "${var.rg}"

    ip_configuration {
        name                          = "spoke1Configuration"
        subnet_id                     = "${var.subnet_id[count.index]}"
        private_ip_address_allocation = "Dynamic"
        
    }

}
resource "azurerm_network_interface_security_group_association" "spokesg" {
    network_interface_id      = "${azurerm_network_interface.spokenic[count.index].id}"
    count                     = "${length(var.subnet_id)}"
    network_security_group_id = "${var.sg_id1[count.index]}"
}
