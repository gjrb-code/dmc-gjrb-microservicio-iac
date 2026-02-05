resource "azurerm_container_app" "microservicio" {
  name                        = local.nombre_container_app
  container_app_environment_id = azurerm_container_app_environment.entorno.id
  resource_group_name         = azurerm_resource_group.grupo.name
  revision_mode               = "Single"
  tags                        = local.etiquetas_finales

  template {
    container {
      name   = "microservicio-hello"
      image  = var.imagen_contenedor
      cpu    = 0.25
      memory = "0.5Gi"

      # Variable de entorno de ejemplo (no sensible)
      env {
        name  = "NOMBRE_PERSONA"
        value = "Geovanny Robles"
      }
    }

    min_replicas = 1
    max_replicas = 3
  }

  ingress {
    external_enabled = true
    target_port      = var.puerto_aplicacion
    transport        = "auto"

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
