#virtual Network, Subnet and Subnet NSGs Variable

#Virtual Network vnet_name
variable "vnet_name" {
  description = "Virtual Network Name"
  type = string
  default = "vnet-default"
}

#Virtual Network Address space vnet_address_space
variable "vnet_address_space" {
  description = "Virtual Network Address Space"
  type = list(string)
  default = [ "10.0.0.0/16" ]
}

#Web Subnet Name web_subnet_name
variable "web_subnet_name" {
  description = "Virtual Network Web Subnet Name"
  type = string
  default = "websubnet"
}

#Web Subnet Address space web_subnet_address
variable "web_subnet_address" {
  description = "Virtual Network Web Subnet Address Spcae"
  type = list(string)
  default = [ "10.0.1.0/24" ]
}

#App Subnet Name app_subnet_name
variable "app_subnet_name" {
  description = "Virtual Network App Subnet Name"
  type = string
  default = "appsubnet"
}

#App Subnet Address space app_subnet_address
variable "app_subnet_address" {
  description = "Virtual Network App Subnet Address Space"
  type = list(string)
  default = [ "10.0.11.0/24" ]
}

#Database Subnet Name db_subnet_name
variable "db_subnet_name" {
  description = "Virtual Network Database Subnet Name"
  type = string
  default = "dbsubnet"
}

#Database Subnet Address space db_subnet_address
variable "db_subnet_address" {
  description = "Virtual Network DB Subnet Address Space"
  type = list(string)
  default = [ "10.0.21.0/24" ]
}

#Bastion / Management Subnet Name bastion_subnet_name
variable "bastion_subnet_name" {
  description = "Virtual Network Bastionm Subnet Name"
  type = string
  default = "bastionsubnet"
}

#Bastion / Management Subnet Address space bastion_subnet_address
variable "bastion_subnet_address" {
  description = "Virtual Network Bastion Subnet Address Space"
  type = list(string)
  default = [ "10.0.100.0/24" ]
}