output "rg" {
    value = "${module.spoke_rg.rg}"
}
output "location" {
    value = "${module.spoke_rg.location}"
}
output "spoke_vnetname" {
    value = "${element(concat(module.spoke_vnet.*.spoke_vnetname,[""]),0)}"
}
output "spoke_vnetid" {
    value = "${element(concat(module.spoke_vnet.*.spoke_vnetid,[""]),0)}"
}
output "spoke_vnetcidr" {
    value = "${module.spoke_vnet.*.spoke_vnetcidr}"
}
output "spoke_subnetid" {
    value = "${module.spoke1-subnet.*.spoke_subnetid}"
}
output "spoke_subnet" {
    value = "${module.spoke1-subnet.*.spoke_subnet}"
}
