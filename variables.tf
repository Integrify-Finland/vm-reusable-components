variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "vnet_name" {
  type = string
}

variable "cidr_block" {

  type    = list(string)
  default = ["10.0.0.0/16"]

}

variable "subnet_cidr_block" {

  type    = list(string)
  default = ["10.0.2.0/24"]

}

variable "subnet_name" {
  type = string
}

variable "public_ip_address" {
  type = string
}

variable "virtualMachineName" {
  type = string
}

variable "diskSize" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "nic_name" {
  type = string
}

variable "nsg_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
}



variable "nic_subnet_details" {

  type = string

}

variable "security_rule" {

  type = map(object({

    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string

  }))

}