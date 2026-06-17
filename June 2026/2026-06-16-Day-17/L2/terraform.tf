# Terraform — Multi-Cloud Infrastructure with AWS and Azure

# AWS VPC
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
  
}

# Azure VNet
resource "azurerm_virtual_network" "main" {
    name           = "nephronix-vnet"
    location       = "East US"
    address_space  = ["10.0.0.0/16"] 
    resource_group_name = azurem_resource_group.main.name 

  
}
# EC2 instance in AWS
resource "aws_instance" "nephronix_ec2" {
    ami            = "ami-0abcd1234abcd1234"
    instance_type  = "t2.micro"
    region         = "us-east-1"
  
}
# Virtual Machine in Azure
resource "azurerm_linux_virtual_machine" "nephroix_vm" {
    name                = "nephronix-azure-vm"
    resource_group_name = azurerm_resource_group.main.name 
    location            = azurerm_resource_group.main.location 
    size                = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "Paassssow123!"
}