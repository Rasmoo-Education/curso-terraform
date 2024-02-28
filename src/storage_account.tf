resource "azurerm_resource_group" "resource_group_tf_rasmoo" {
  name     = ""
  location = ""

  tags = {}
}

resource "azurerm_storage_account" "storage_account_tf_rasmoo" {
  name                     = ""
  resource_group_name      = ""
  location                 = ""
  account_tier             = ""
  account_replication_type = ""

  tags = {}
}

resource "azurerm_storage_container" "strage_container_tf_rasmoo" {
  name                 = ""
  storage_account_name = ""
}
