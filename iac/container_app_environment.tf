resource "azurerm_container_app_environment" "entorno" {
  count = var.usar_entorno_existente ? 0 : 1

  name                       = local.nombre_entorno_container_apps
  location                   = azurerm_resource_group.grupo.location
  resource_group_name        = azurerm_resource_group.grupo.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.logs.id
  tags                       = local.etiquetas_finales
}
