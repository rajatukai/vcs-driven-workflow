terraform {
   cloud {
    organization = "hcta-azure-demo100"

    workspaces {
      name = "vcs-driven-workflow"
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

  features {}
}
