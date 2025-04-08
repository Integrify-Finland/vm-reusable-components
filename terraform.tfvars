resource_group_name = "devops2-resource-group-saurabh"
location            = "West Europe"
tags                = { "env" : "production" }
vnet_name           = "devops2-vnet-name-saurabh"
cidr_block          = ["10.0.0.0/16"]
subnet_cidr_block   = ["10.0.2.0/24"]
subnet_name         = "devops2-subnet-saurabh"
public_ip_address   = "devops2-public-ip-saurabh"
diskSize            = "Standard_DS1_v2"
nic_name            = "devops2-public-ip-saurabh"
nsg_name            = "devops2-nsg-saurabh"
virtualMachineName  = "devops2-virtual-name-saurabh"

subnets = {
  public_subnet = {

    address_prefixes = ["10.0.2.0/24"]

  }

  private_subnet = {

    address_prefixes = ["10.0.3.0/24"]

  }
}

nic_subnet_details = "public_subnet"

security_rule = {
  "allow_ssh" = {

    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }

  "allow_http" = {

    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }
}