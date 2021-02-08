provider "azurerm" {
  features {}
}
module "hub_rg" {
    source = "./hub"
    rg = "${var.hub_rg}"
    location = "${var.hub_location}"
    hub_cidr1 = "${var.hub_cidr}"
    subnet2   = "${var.subnet1}"
    dmz      = "${var.dmz1}"
    private_ip1 ="${var.private_nva}"
    
    
}


module "spoke1" {
    source = "./spokes"
    rg = "${var.spoke1_rg}"
    location = "${var.spoke1_location}"
    spoke1_name ="${var.spokes_name}"
    spoke_cidr1 ="${var.spokes_cidr}"
    spoke1_subnet1 = "${var.spoke_subnet}"
    
}

module "peering" {
    source = "./peering"
    rg = "${var.hub_rg}"
    rg1 = "${var.spoke1_rg}"
    source1 ="${module.hub_rg.vnet_name}"
    vnet_id = "${module.hub_rg.vnet_id}"
    spoke1_name ="${module.spoke1.spoke_vnetname}"
    spoke2444 = "${module.spoke1.spoke_vnetid}"


    
}
terraform {
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "statefiless"
    container_name       = "state"
    
  }
}