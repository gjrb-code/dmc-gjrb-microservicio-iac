id_suscripcion    = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
prefijo           = "dmc-gjrb-ms"
ubicacion         = "eastus"
imagen_contenedor = "docker.io/gjrbdev/gjrb-microservicio-hello:1.0.0"

# Opcional: 
dominio_personalizado = null

# Opcional: por defecto 8080 
puerto_aplicacion = 8080

etiquetas = {
  dueño = "Geovanny"
}

#Entorno existente 
usar_entorno_existente           = true
nombre_entorno_existente         = "env-javier"
grupo_recursos_entorno_existente = "rg-javierhuaman"

