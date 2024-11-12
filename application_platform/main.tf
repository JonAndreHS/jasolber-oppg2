terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate-ja"
    storage_account_name = "sabetfsjaucgg232elq"
    container_name       = "tfstate"
    key                  = "application_platform.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "7c064ed9-c59f-4935-938b-f1a654d088a7"
  features {}
}
/*
resource "azurerm_resource_group" "rg" {
  name     = "${var.rgName}-${terraform.workspace}"
  location = var.location
}*/

data "azurerm_resource_group" "rg" {
  name = "${var.rgName}-${terraform.workspace}"
}

module "app_service" {
  source   = "../modules/app_service"
  rgName   = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}

module "database" {
  source   = "../modules/database"
  rgName   = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}
#Test