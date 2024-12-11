#Generic Input Variable
#Business Division
variable "business_division" {
  description = "Business Divison in large organization"
  type = string
  default = "SAP"
}

#Envionment Variable
variable "environment" {
  description = "it is used as prefix"
  type = string
  default = "Dev"
}

#Azure Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type = string
  default = "rg-default"
}

#Azure Resource Location
variable "resource_group_location" {
  description = "region in which resources are to be created"
  type = string
  default = "eastus2"
}