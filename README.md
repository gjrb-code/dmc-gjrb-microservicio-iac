# Infraestructura como código (Terraform)

Este repositorio contiene la infraestructura como código para desplegar un microservicio en Azure Container Apps.

## Componentes aprovisionados
- Grupo de recursos
- Log Analytics Workspace
- Entorno de Azure Container Apps
- Azure Container App (ingress público)

## Variables principales
- `prefijo`: prefijo para los nombres de recursos
- `ubicacion`: región de Azure (por defecto `eastus`)
- `imagen_contenedor`: imagen en Docker Hub
- `puerto_aplicacion`: puerto interno del contenedor (por defecto `8080`)

## Ejecución
1. Autenticarse en Azure:
   - `az login`

2. Inicializar Terraform:
   - `terraform -chdir=iac init`

3. Plan:
   - `terraform -chdir=iac plan -var-file=terraform.tfvars`

4. Apply:
   - `terraform -chdir=iac apply -var-file=terraform.tfvars`

## Notas importantes
- No se versionan archivos `.tfstate` ni la carpeta `.terraform/`.
- El archivo `.terraform.lock.hcl` se genera al ejecutar `init` y puede versionarse.
