terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-backend-tfstate-ja"
    storage_account_name  = "sabetfsjaucgg232elq"
    container_name        = "tfstate"
    key                   = "core_infrastructure.terraform.tfstate"
  }  
}

provider "azurerm" {
  subscription_id = "7c064ed9-c59f-4935-938b-f1a654d088a7"
  features {}
}

resource "azurerm_resource_group" "rg" {
    name     = var.rgName
    location = var.location
}

module "network" {
  source = "../modules/networking"
    rgName = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}

module "storage" {
  source = "../modules/storage"
  rgName = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  saName = "sa${random_string.random.result}"
}

resource "random_string" "random" {
  length  = 8
  special = false
  upper = false
}

#test