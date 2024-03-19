###########################
# Common vars
###########################
variable "environment" {
  description = "Variable that defines the name of the environment."
  type        = string
  default     = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default = {
    "ManagedByTerraform" = "True"
  }
}
variable "region" {
  description = "Region in which resources are deployed."
  type        = string
  default     = "weu"
}

###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the container registry component. Changing this forces a new resource to be created."
  type        = string
}
############################
#Container registry variable
############################
variable "acr_tier" {
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources."
  type        = string
  default     = "Basic"

  validation {
    condition     = can(regex("^(Basic|Premium)$", var.acr_tier))
    error_message = "Invalid value for acr_tier. Valid values are Basic or Premium."
  }
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