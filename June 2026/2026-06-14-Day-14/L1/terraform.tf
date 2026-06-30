provider "aws" {
    region = "us-east-1"
  
}

resource "aws_vpc" "main" {
    cidr_block     = "10.0.0.0/16"

    tags = {
        Name  = "Main VPC"
    }
  
}


resource "aws_subnet" "public" {
    vpc_id  = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
   map_public_ip_on_launch = true

   tags = {
    Name = "Public Subnet"
   }
  
}
resource "aws_internet_gateway" "main" {
    vpc_id  = aws_vpc.main.id

    tags = {
        Name = "Main IGW"
    }
  
}

resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id 
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main.id
    }

    tags = {
        Name = "Public RTI"
    }
  
}
resource "aws_route_table_association" "public" {
    subnet_id = aws_subnet.public.id 
    route_table_id = aws_route_table.public.id
  
}





resource "aws_instance" "nephronix_ec2" {

    ami              = "ami-0c55b159cbfafe1f0"
    instance_type    = "c5.xlarge"
    subnet_id = aws_subnet.public.id


    tags = {
        Name = "Nephronix Server"
    }
  
}

output "nephronic_ec2_ip" {
    value = aws_instance.nephronix_ec2.public_ip
    description = "Public IP of Nephronix EC2"
  
}

