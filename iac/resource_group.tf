resource "azurerm_resource_group" "grupo" {
  name     = local.nombre_grupo_recursos
  location = var.ubicacion
  tags     = local.etiquetas_finales
}
