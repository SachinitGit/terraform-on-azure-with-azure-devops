# Terraform Block
terraform {
  required_version = ">= 1.9.7"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 4.0" 
    }
     random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    } 
    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    
  } 
}

# Provider Block
provider "azurerm" {
  subscription_id = "2c65afc7-f138-4ff9-9faa-5270bb62ac23"
  resource_provider_registrations = "none"
  features {}          
}