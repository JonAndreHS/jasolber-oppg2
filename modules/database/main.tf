terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

data "azurerm_key_vault" "kv" {
  name                = "kv-backend-ja-ucgg232elq"
  resource_group_name = "rg-backend-tfstate-ja"
}

data "azurerm_key_vault_secret" "kv_secret_username" {
  name         = "sql-admin-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "kv_secret_password" {
  name         = "sql-admin-password"
  key_vault_id = data.azurerm_key_vault.kv.id

}

resource "azurerm_mssql_server" "mssql_server" {
  name                          = var.mssqlServerName
  resource_group_name           = var.rgName
  location                      = var.location
  version                       = var.dbServerVersion
  administrator_login           = data.azurerm_key_vault_secret.kv_secret_username.value
  administrator_login_password  = data.azurerm_key_vault_secret.kv_secret_password.value
  public_network_access_enabled = false
  minimum_tls_version           = "1.2"
  #tfsec:ignore:azure-database-enable-audit
}

resource "azurerm_mssql_database" "mssql_database" {
  name      = var.mssqlDatabaseName
  server_id = azurerm_mssql_server.mssql_server.id
}