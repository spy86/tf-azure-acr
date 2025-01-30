variable "environment" {
  description = "The name of the environment to deploy resources into, such as 'dev', 'test', or 'prod'."
  type        = string
}

variable "default_tags" {
  description = "A map of default tags to assign to all resources, aiding in resource organization and cost tracking."
  type        = map(string)
}

variable "resource_group_location" {
  description = "The Azure region where the resource group is located. Changing this value will recreate the Container Registry."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Container Registry will be created. Modifying this value will recreate the resource."
  type        = string
}

variable "acr_tier" {
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources."
  type        = string
  default     = "Basic"
}
variable "acr_name" {
  description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  type        = string
}
variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled. Defaults to false."
  type        = string
  default     = "false"
}
