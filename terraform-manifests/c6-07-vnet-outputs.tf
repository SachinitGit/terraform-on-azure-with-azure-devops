# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network name"
  value = azurerm_virtual_network.vnet.name
}

## Virtual Network ID
output "Virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

# Subnet Outputs (We will write for one web subnet and rest all we will ignore for now)
## Web Subnet Name
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.websubnet.name
}
## Web Subnet ID 
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

# Network Security Outputs
## Web Subnet NSG Name 
output "web_subnet_nsg" {
  description = "WebTier Subnet NSG"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}



## App Subnet Name
output "app_subnet_name" {
  description = "AppTier Subnet Name"
  value = azurerm_subnet.appsubnet.name
}
## App Subnet ID 
output "app_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.appsubnet.id
}

# Network Security Outputs
## App Subnet NSG Name 
output "app_subnet_nsg" {
  description = "AppTier Subnet NSG"
  value = azurerm_network_security_group.app_subnet_nsg.name
}

## App Subnet NSG ID 
output "app_subnet_nsg_id" {
  description = "AppTier Subnet NSG ID"
  value = azurerm_network_security_group.app_subnet_nsg.id
}



## DB Subnet Name
output "db_subnet_name" {
  description = "DBTier Subnet Name"
  value = azurerm_subnet.dbsubnet.name
}
## DB Subnet ID 
output "db_subnet_id" {
  description = "DBTier Subnet ID"
  value = azurerm_subnet.dbsubnet.id
}

# Network Security Outputs
## DB Subnet NSG Name 
output "db_subnet_nsg" {
  description = "DBTier Subnet NSG"
  value = azurerm_network_security_group.db_subnet_nsg.name
}

## DB Subnet NSG ID 
output "db_subnet_nsg_id" {
  description = "DBTier Subnet NSG ID"
  value = azurerm_network_security_group.db_subnet_nsg.id
}



## Bastion Subnet Name
output "bastion_subnet_name" {
  description = "BastionTier Subnet Name"
  value = azurerm_subnet.bastionsubnet.name
}
## Bastion Subnet ID 
output "bastion_subnet_id" {
  description = "BastionTier Subnet ID"
  value = azurerm_subnet.bastionsubnet.id
}

# Network Security Outputs
## Bastion Subnet NSG Name 
output "bastion_subnet_nsg" {
  description = "BastionTier Subnet NSG"
  value = azurerm_network_security_group.bastion_subnet_nsg.name
}

## Bastion Subnet NSG ID 
output "bastion_subnet_nsg_id" {
  description = "BastionTier Subnet NSG ID"
  value = azurerm_network_security_group.bastion_subnet_nsg.id
}