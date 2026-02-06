# Infraestructura como código (Terraform) - Azure Container Apps

Este repositorio aprovisiona la infraestructura necesaria para desplegar un microservicio en Azure Container Apps, consumiendo una imagen desde Docker Hub.

## Componentes aprovisionados en Azure
- Grupo de recursos
- Log Analytics Workspace (logs)
- Entorno de Azure Container Apps
- Azure Container App (ingress público habilitado)

## Archivo de configuración requerido (obligatorio)
Antes de ejecutar Terraform, debes modificar el archivo:

- `iac/terraform.tfvars`

En este archivo se configuran:
- `id_suscripcion` (obligatorio)
- `dominio_personalizado` (opcional)
- `puerto_aplicacion` (opcional; por defecto 8080)

## ¿Dónde se configura cada cosa?

### 1) Suscripción de Azure (obligatorio)
Se configura en:
- `iac/terraform.tfvars` → `id_suscripcion`
Ejemplo:
id_suscripcion = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"


```md
## Diagrama de arquitectura

```mermaid
flowchart LR
    U[Usuario / Cliente<br/>Navegador o curl] -->|HTTPS GET /hello| FQDN[FQDN público<br/>*.azurecontainerapps.io]
    FQDN --> ACA[Azure Container Apps<br/>Ingress público]
    ACA --> APP[Container App<br/>Microservicio Python /hello]

    APP -->|Logs| LA[Log Analytics Workspace]

    DH[Docker Hub<br/>gjrbdev/gjrb-microservicio-hello:1.0.0] -->|Pull de imagen| ACA

    TF[Terraform (local)<br/>Repo IaC en GitHub] -->|Aprovisiona recursos| AZ[Azure Subscription]
    AZ --> RG[Resource Group]
    RG --> LA
    RG --> ACA