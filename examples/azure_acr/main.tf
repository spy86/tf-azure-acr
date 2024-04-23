provider "azurerm" {
features {}
}

module "acr" {
  source  = "Think-Cube/container-registry/azure"
  version = "1.0.0"
  
  envirioment = "dev"
  acr_name    = "registry4test"
  resource_group_name = "dev-test-weu-rg"
  resource_group_location =  "West Europe"
  acr_tier = "Basic"
  acr_admin_enabled = "true"
  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}
}
