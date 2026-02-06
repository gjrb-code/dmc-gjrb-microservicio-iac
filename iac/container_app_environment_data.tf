data "azurerm_container_app_environment" "entorno_existente" {
  count = var.usar_entorno_existente ? 1 : 0

  name                = var.nombre_entorno_existente
  resource_group_name = var.grupo_recursos_entorno_existente
}
