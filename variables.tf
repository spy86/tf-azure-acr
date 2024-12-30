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
  description = "The pricing tier (SKU) of the Azure Container Registry. Valid options are 'Basic', 'Standard', and 'Premium'. Default is 'Basic'."
  type        = string
  default     = "Basic"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry. Modifying this value will recreate the resource."
  type        = string
}

variable "acr_admin_enabled" {
  description = "A boolean flag indicating whether the admin user account for the Container Registry is enabled. Default is false."
  type        = bool
  default     = false
}
