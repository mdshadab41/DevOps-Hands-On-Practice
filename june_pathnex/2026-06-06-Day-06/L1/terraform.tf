
provider "aws" {
    region =  "us-east-1"
  
}


resource "aws_instance" "BrokenEC2" {
    ami                   = "ami-0xyz"
    instance_type         = "t2.micro" 

    tags = {
        Name = "Broken"
    }
  
}