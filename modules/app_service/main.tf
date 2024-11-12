terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

resource "azurerm_service_plan" "service_plan" {
  name                = var.servicePlanName
  resource_group_name = var.rgName
  location            = var.location
  os_type             = var.osType
  sku_name            = var.skuName
  worker_count        = 2
}

resource "azurerm_linux_web_app" "example" {
  name                = "${var.linuxWebAppName}-${terraform.workspace}"
  resource_group_name = var.rgName
  location            = var.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {}
}