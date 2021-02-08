module "hub_rg1" {
    source = "./resourcegroup"
    hub_rg = "${var.rg}"
    hub_location= "${var.location}"
}
module "hub-vnet" {
    source = "./vnet"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    hub_cidr = "${var.hub_cidr1}"
}
module "subnets" {
    source = "./subnet"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    hub_vnet ="${module.hub-vnet.vnet_name}"
    subnet1  = "${var.subnet2}"
    
}
module "dmz" {
    source = "./dmz"
    rg = "${module.hub_rg1.rg}"
    hub_vnet ="${module.hub-vnet.vnet_name}"
    dmz1     = "${var.dmz}"
    
}
module "publicip" {
    source = "./publicip"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    
}
module "nva-nic" {
    source = "./nic"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    dmz_id = "${module.dmz.dmz_id}"
    private_ip= "${var.private_ip1}"
    
}
module "router" {
    source = "./nva-vm"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    nic_id = "${module.nva-nic.nic_id}"

}
module "routetable" {
    source = "./routetable"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    subnet_id ="${module.subnets.subnet_id}"

}
module "testvm3" {
    source = "./test-vm"
    rg = "${module.hub_rg1.rg}"
    location ="${module.hub_rg1.location}"
    subnetvm_id ="${module.subnets.subnet_id}"
    publicvm_id ="${module.publicip.public_id}"
}
