#variable "resource_group_name" {
#  type        = string
#  description = "Specifies the name of the resource group that will be created."
#}

variable "location" {
  type        = string
  description = "The location/region where Azure resource will be created."
  default     = "uksouth"
}


variable "subscription_id" {
  type        = string
  description = "Specifies subscription Id"
}
