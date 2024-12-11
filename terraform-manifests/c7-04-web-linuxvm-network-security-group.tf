/*

# Resource-3 (Optional): Create Network Security Group and Associate to Linux VM Network Interface
# Resource-1: Create Network Security Group (NSG)

resource "azurerm_network_security_group" "web_vmnic_nsg" {
  name = "${azurerm_network_interface.web_linuxvm_nic.name}-nsg"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
}


# Resource-2: Associate NSG and Linux VM NIC

resource "azurerm_network_interface_security_group_association" "name" {
  depends_on = [ azurerm_network_security_rule.web_vmnic_nsg_rule_inbound ]
  network_interface_id = azurerm_network_interface.web_linuxvm_nic.id
  network_security_group_id = azurerm_network_security_group.web_vmnic_nsg.id
}

# Resource-3: Create NSG Rules
## Locals Block for Security Rules

locals {
  web_vmnic_inbound_ports_map = {
    "100" : "80", # If the key starts with a number, you must use the colon syntax ":" instead of "="
    "110" : "443",
    "120" : "22"
  }
}

resource "azurerm_network_security_rule" "web_vmnic_nsg_rule_inbound" {
  for_each = local.web_inbound_ports_map
  name                        = "Rule-Port-${each.value}"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.web_vmnic_nsg.name
  protocol                    = "Tcp"
  access                      = "Allow"
  priority                    = each.key
  direction                   = "Inbound"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
}

*/