# Terraform — Multi-Region VPC with EC2

resource "aws_vpc" "us_east_vpc" {
    cidr_block = "10.0.0.0/16"
    region = "us-east-1"
}

resource "aws_vpc" "us_west_vpc" {
    cidr_block = "10.1.0.0/16"
    region     = "us-west-1"
  
}

resource "aws_instance" "nephronix_ec2_us_east" {
    ami                 =  "ami-0abcd1234abcd1234"
    instance_type       = "t2.micro"
    region              = "us-east-1"
  
}

resource "aws_instance" "nephronix_ec2_us_west" {
    ami              = "ami-0abcd1234abcd1234"
    instance_type    = "t2.micro"
    region           = "us-west-1"
  
}