output "nombre_container_app" {
  description = "Nombre de la Container App creada."
  value       = azurerm_container_app.microservicio.name
}

output "fqdn_publico" {
  description = "FQDN público para acceder a la aplicación."
  value       = azurerm_container_app.microservicio.ingress[0].fqdn
}

output "url_hello" {
  description = "URL completa para probar el endpoint /hello."
  value       = "https://${azurerm_container_app.microservicio.ingress[0].fqdn}/hello"
}

output "dominio_configurado" {
  description = "Dominio personalizado solicitado (si aplica)."
  value       = var.dominio_personalizado
}

output "instrucciones_dominio" {
  description = "Guía resumida para apuntar el dominio al FQDN de la Container App."
  value = (
    var.dominio_personalizado == null
    ? "No se configuró dominio personalizado."
    : "Crear un CNAME desde el dominio personalizado hacia el FQDN público y luego vincular el dominio en Azure Container Apps con certificado."
  )
}

