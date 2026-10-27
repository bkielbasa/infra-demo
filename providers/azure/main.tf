terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# ARM_USE_OIDC, ARM_CLIENT_ID, ARM_TENANT_ID, and ARM_SUBSCRIPTION_ID
# come from the Azure cloud integration.
provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "westeurope"
}

resource "azurerm_resource_group" "demo" {
  name     = "infra-demo"
  location = var.location
}
