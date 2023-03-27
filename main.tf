# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

}

provider "azurerm" {
  skip_provider_registration = "true"
  features {} 
}
resource "azurerm_resource_group" "rg" {
  name     = "kenyRG"
  location = "westus2"
}
