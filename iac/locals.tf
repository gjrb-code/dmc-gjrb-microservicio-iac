locals {
  # Nombres consistentes para recursos
  nombre_grupo_recursos         = "${var.prefijo}-rg"
  nombre_log_analytics          = "${var.prefijo}-law"
  nombre_entorno_container_apps = "${var.prefijo}-env"
  nombre_container_app          = "${var.prefijo}-app"

  # Etiquetas base (se combinan con las que envíes en var.etiquetas)
  etiquetas_base = {
    proyecto = "practica-devops"
  }

  etiquetas_finales = merge(local.etiquetas_base, var.etiquetas)
}
