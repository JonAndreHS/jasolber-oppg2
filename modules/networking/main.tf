terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsgName
  location            = var.location
  resource_group_name = var.rgName
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetName
  location            = var.location
  resource_group_name = var.rgName
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnetName1
  resource_group_name  = var.rgName
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}