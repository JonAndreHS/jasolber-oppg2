output "storage_account_connection_string_output" {
  description = "The connection string for the storage account"
  value       = azurerm_storage_account.sa.primary_connection_string
}

output "storage_account_primary_access_key_output" {
  description = "The access key for the storage account"
  value       = azurerm_storage_account.sa.primary_access_key
}
