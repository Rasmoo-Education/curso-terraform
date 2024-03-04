output "main_storage_account_pk" {
  value       = azurerm_storage_account.storage_account_tf_rasmoo.primary_access_key
  description = "Primary access key da storage account principal, onde serão deployados alguns arquivos."

  sensitive = true
}
