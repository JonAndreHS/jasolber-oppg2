variable "rgName" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "nsgName" {
  description = "Name of the network security group"
  type        = string
  default     = "nsg-default-name"
}

variable "vnetName" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-default-name"
}

variable "subnetName1" {
  description = "Name of the subnet"
  type        = string
  default     = "subnet-default-name1"
}

variable "subnetName2" {
  description = "Name of the subnet"
  type        = string
  default     = "subnet-default-name2"

}