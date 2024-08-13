output "storage_account_id" {
  value = azurerm_storage_account.sa.id
}

output "storage_account_primary_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}
