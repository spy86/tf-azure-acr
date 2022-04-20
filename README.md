<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 2.98.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.98.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.main](https://registry.terraform.io/providers/hashicorp/azurerm/2.98.0/docs/resources/container_registry) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.98.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.98.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_admin_enabled"></a> [acr\_admin\_enabled](#input\_acr\_admin\_enabled) | Specifies whether the admin user is enabled. Defaults to false. | `string` | `"false"` | no |
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | Specifies the name of the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_acr_tier"></a> [acr\_tier](#input\_acr\_tier) | The SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources. | `string` | `"Basic"` | no |
| <a name="input_envirioment"></a> [envirioment](#input\_envirioment) | Specifies the name of the envirioment | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | A mapping of tags to assign to the resource. | `string` | n/a | yes |
| <a name="input_tag_owner"></a> [tag\_owner](#input\_tag\_owner) | A mapping of tags to assign to the resource. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_password"></a> [admin\_password](#output\_admin\_password) | The Password associated with the Container Registry Admin account - if the admin account is enabled. |
| <a name="output_admin_username"></a> [admin\_username](#output\_admin\_username) | The Username associated with the Container Registry Admin account - if the admin account is enabled. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Container Registry. |
| <a name="output_login_server"></a> [login\_server](#output\_login\_server) | The URL that can be used to log into the container registry. |
<!-- END_TF_DOCS -->