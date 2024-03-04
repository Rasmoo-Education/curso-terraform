resource "azurerm_resource_group" "resource_group_tf_rasmoo" {
  name     = "resource_group_tf_rasmoo_name"
  location = var.location

  tags = var.common-tags
}
resource "azurerm_storage_account" "storage_account_tf_rasmoo" {
  name                     = "storage_account_tf_rasmoo_name"
  resource_group_name      = azurerm_resource_group.resource_group_tf_rasmoo.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = merge(var.common-tags, {
    environment = var.environment
  })
  //map resultante: { maneged-by = "terraform", owner = "rasmoo", environment = "DEV" }
}

resource "azurerm_storage_container" "storage_container_tf_rasmoo" {
  name                 = "storage_container_tf_rasmoo_name"
  storage_account_name = azurerm_storage_account.storage_account_tf_rasmoo.name
}
