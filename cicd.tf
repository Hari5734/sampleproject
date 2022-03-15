
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.99.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {} 
}



  #Resource manager
  resource "azurerm_resource_group" "myrg" {
  name     = "cicd-rg"
  location = "eastus2"
  tags = {
    envinorment = "Dev"
    costcenter = "IT"
  }
  }
