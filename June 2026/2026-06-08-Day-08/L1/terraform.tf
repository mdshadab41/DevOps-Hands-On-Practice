## 🔹 Terraform — Create VPC + Subnet

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_vpc" "PathnexVPC" {
    cidr_block = "10.10.0.0/16"

    tags = {
        Name = "Pathnex-VPC"
    }
  
}

resource "aws_subnet" "PathnexSubnet" {
    vpc_id          =   aws_vpc.PathnexVPC.id 
    cidr_block      = "10.10.1.0/24" 
    map_public_ip_on_launch = true

    tags = {
        Name = "Pathnex-Subnet"
    }
  
}