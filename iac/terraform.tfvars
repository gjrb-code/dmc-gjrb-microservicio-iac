id_suscripcion    = "b497fd69-266c-46a9-b55b-8be0cd579667"
prefijo           = "dmc-gjrb-ms"
ubicacion         = "eastus"
imagen_contenedor = "docker.io/gjrbdev/gjrb-microservicio-hello:1.0.0"

# Opcional: si no lo usarás, déjalo en null
dominio_personalizado = null

# Opcional: por defecto 8080 (puedes omitirlo si deseas)
puerto_aplicacion = 8080

etiquetas = {
  dueño = "Geovanny"
}

#Entorno existente 
usar_entorno_existente           = true
nombre_entorno_existente         = "env-javier"
grupo_recursos_entorno_existente = "rg-javierhuaman"

