# Terraform Module: Azure Container Registry (ACR)

This Terraform module provisions an Azure Container Registry (ACR) in Azure.

## Usage

```hcl
provider "azurerm" {
features {}
}

module "container_registry" {
  source                  = "Think-Cube/container-registry/azure"
  version                 = "1.0.0"
  envirioment             = "dev"
  acr_name                = "registry4test"
  resource_group_name     = "weu-test-rg"
  resource_group_location =  "West Europe"
  acr_tier                = "Basic"
  acr_admin_enabled       = "true"
  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}
}
```

### Variables

* `environment`: The environment name (e.g., dev, stage, prod).
* `acr_name`: The name of the Azure Container Registry.
* `resource_group_name`: The name of the resource group in which to create the ACR.
* `resource_group_location`: The location of the resource group.
* `acr_tier`: The pricing tier for the ACR.
* `acr_admin_enabled`: Whether admin user should be enabled for the ACR.
* `default_tags`: Default tags to be applied to all resources.

### Outputs

* `id`: The ID of the Container Registry.
* `login_server`: The URL that can be used to log into the container registry.
* `admin_username`: The Username associated with the Container Registry Admin account.
* `admin_password`: The Password associated with the Container Registry Admin account.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
