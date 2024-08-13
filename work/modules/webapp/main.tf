resource "azurerm_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name

  os_type             = var.os_type
  sku_name            = var.sku_name

}

resource "azurerm_app_service" "app" {
  name                = var.webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_service_plan.asp.id

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
  }

  app_settings = var.app_settings

  tags                = var.tags

  lifecycle {
    ignore_changes = [tags]
  }
}