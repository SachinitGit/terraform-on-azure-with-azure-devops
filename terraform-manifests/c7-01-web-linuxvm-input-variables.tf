#web linuxvm input variables file
#if you want then please variablize the variables for web linux vm otherwise we can leave as it is.
variable "web_linuxvm_size" {
  description = "Web Linux VM Size"
  type = string
  default = "Standard_DS1_v2"
}

variable "web_linuxvm_admin_user" {
  description = "Web Linux VM Admin Username"
  type = string
  default = "azureuser"
}