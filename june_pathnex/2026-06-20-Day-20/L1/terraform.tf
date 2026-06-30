
provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "nephronix_ec2" {
    ami           = "ami-1234567898"
    instance_type = "c6i.8xlarge"


    tags = {
        Name = "Nephronix-EC2"
    }
}