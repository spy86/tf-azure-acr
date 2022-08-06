provider "azurerm" {
features {}
}

module "acr" {
  source  = "spy86/acr/azure"
  version = "1.0.4"
  
  envirioment = "dev"
  acr_name    = "registry4test"
  resource_group_name = "weu-test-rg"
  resource_group_location =  "West Europe"
  acr_tier = "Basic"
  acr_admin_enabled = "true"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}