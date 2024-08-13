resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type

  min_tls_version                 = var.min_tls_version
  allow_nested_items_to_be_public = var.public_nested_items_allowed
  public_network_access_enabled   = var.public_network_access_enabled
  shared_access_key_enabled       = var.shared_access_key_enabled

  tags = var.tags

  lifecycle {
    ignore_changes = [tags]
  }

}