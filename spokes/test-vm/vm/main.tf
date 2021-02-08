resource "azurerm_virtual_machine" "spoke-vm" {
  name                  = "spoke-vm${count.index+1}"
  count ="${length(var.vmnic_id)}"
  location              = "${var.location}"
  resource_group_name   = "${var.rg}"
  network_interface_ids = ["${var.vmnic_id[count.index]}"]
  vm_size               = "Standard_B1ls"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdiskkkkkk${count.index}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "hub-vm"
    admin_username = "rengaprakash"
    admin_password = "rengaprakash@123"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}