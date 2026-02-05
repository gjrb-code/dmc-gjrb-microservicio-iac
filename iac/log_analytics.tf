resource "azurerm_log_analytics_workspace" "logs" {
  name                = local.nombre_log_analytics
  location            = azurerm_resource_group.grupo.location
  resource_group_name = azurerm_resource_group.grupo.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = local.etiquetas_finales
}
