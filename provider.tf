terraform {
   cloud {
    organization = "hcta-azure-demo100"

    workspaces {
      name = "cli-driven-azure-demo"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "333d9970-75d7-4ce4-86c2-26a818c62d9b"
  tenant_id       = "df084ac0-4bbd-40ee-ac4a-d81e04cb8f11"
  client_id       = "be9baeb4-e4ca-4d26-b9d2-4d276c425b05"
  client_secret   = "6J88Q~ubCicSH_S3pvQhGHkrCnaqjHgyrQfGwaWi"
  features {}
}