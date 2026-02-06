variable "id_suscripcion" {
  description = "ID de la suscripción de Azure donde se desplegará la infraestructura."
  type        = string
}

variable "prefijo" {
  description = "Prefijo para nombrar todos los recursos."
  type        = string
}

variable "ubicacion" {
  description = "Región de Azure donde se desplegarán los recursos (por ejemplo: eastus)."
  type        = string
  default     = "eastus"
}

variable "etiquetas" {
  description = "Etiquetas comunes para los recursos."
  type        = map(string)
  default     = {}
}

variable "imagen_contenedor" {
  description = "Imagen del contenedor en Docker Hub (por ejemplo: docker.io/usuario/repositorio:tag)."
  type        = string
}

variable "puerto_aplicacion" {
  description = "Puerto interno en el que escucha el microservicio dentro del contenedor."
  type        = number
  default     = 8080
}

variable "dominio_personalizado" {
  description = "Dominio personalizado a configurar para la Container App (ej: api.tudominio.com). Si es null, no se configura."
  type        = string
  default     = null
}

variable "usar_entorno_existente" {
  description = "Si es true, no crea un Container Apps Environment y reutiliza uno existente."
  type        = bool
  default     = false
}

variable "nombre_entorno_existente" {
  description = "Nombre del Container Apps Environment existente (solo si usar_entorno_existente = true)."
  type        = string
  default     = null
}

variable "grupo_recursos_entorno_existente" {
  description = "Resource Group del Container Apps Environment existente (solo si usar_entorno_existente = true)."
  type        = string
  default     = null
}
