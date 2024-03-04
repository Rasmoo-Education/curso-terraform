resource "azurerm_resource_group" "resource_group_tf_rasmoo" {
  name     = "resource_group_tf_rasmoo"
  location = var.location

  tags = var.default_tags
}
resource "azurerm_storage_account" "storage_account_tf_rasmoo" {
  name                     = "storageaccount_tf_rasmoo"
  resource_group_name      = azurerm_resource_group.resource_group_tf_rasmoo.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = merge(
    var.default_tags,
    {
      environment = "dev",
    }
  )
}
resource "azurerm_storage_container" "storage_container_tf_rasmoo" {
  name                 = "storage_container_tf_rasmoo"
  storage_account_name = azurerm_storage_account.storage_account_tf_rasmoo.name
}
