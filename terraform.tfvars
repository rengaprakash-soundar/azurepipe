hub_rg = "master"
hub_location = "westus"
hub_cidr =["192.168.0.0/16"]
subnet1 = "192.168.1.0/24"
dmz1  = "192.168.3.0/24"
private_nva= "192.168.3.84"
spoke1_rg = "slave"
spoke1_location = "eastus"
spokes_name = ["spoke-vnet-1","spoke-vnet-2","spoke-vnet-3"]
spokes_cidr = {
    "spoke-vnet-1" = "20.0.0.0/16"
    "spoke-vnet-2" = "30.0.0.0/16"
    "spoke-vnet-3" = "80.0.0.0/16"
}
        


    

 spoke_subnet  = [
    "20.0.1.0/24",
    "30.0.1.0/24",
    "80.0.1.0/24",
]




