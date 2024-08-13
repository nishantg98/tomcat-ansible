resource "azurerm_bot_web_app" "bot" {
  name                = var.bot_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  microsoft_app_id       = var.microsoft_app_id
  endpoint = var.endpoint

  tags                = var.tags

  lifecycle {
    ignore_changes = [tags]
  }

}

