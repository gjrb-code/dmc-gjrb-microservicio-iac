terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Suscripción configurada por variable (se define en terraform.tfvars)
  subscription_id = var.id_suscripcion
}
