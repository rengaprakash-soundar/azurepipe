resource "azurerm_virtual_machine" "nva-vm" {
  name                  = "router"
  location              = "${var.location}"
  resource_group_name   = "${var.rg}"
  network_interface_ids = ["${var.nic_id}"]
  vm_size               = "Standard_B1ls"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosd1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "hub-vm"
    admin_username = "rengaprakash"
    admin_password = "vivekprasath@123"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}