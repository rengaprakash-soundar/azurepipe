output "vmnic_id" {
    value = "${azurerm_network_interface.spokenic.*.id}"
}