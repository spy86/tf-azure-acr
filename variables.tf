############################
#Common vars
############################
variable "envirioment" {
  description = "Specifies the name of the envirioment"
  type = string
}
variable "tag_environment" {
  description = "A mapping of tags to assign to the resource."
  type = string
}
variable "tag_owner" {
  description = "A mapping of tags to assign to the resource."
  type = string
}
############################
#Resource gropus vars
############################
variable "resource_group_location" {
  description = "The location of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type = string
}
############################
#ACR variable
############################
variable "acr_tier" {
    description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources."
    type = string
    default = "Basic"
}
variable "acr_name" {
    description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created."
    type = string
}
variable "acr_admin_enabled" {
    description = "Specifies whether the admin user is enabled. Defaults to false."
    type = string
    default = "false"
}