output "webapp_id" {
  value = azurerm_app_service.app.id
}

output "webapp_default_hostname" {
  value = azurerm_app_service.app.default_site_hostname
}
