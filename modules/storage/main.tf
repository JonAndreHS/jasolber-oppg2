terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = var.saName
  resource_group_name      = var.rgName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.storageContainerName
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "storage_blob" {
  name                   = var.storageBlobName
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = "Block"
}