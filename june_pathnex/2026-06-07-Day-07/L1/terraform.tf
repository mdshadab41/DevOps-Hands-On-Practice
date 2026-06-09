provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "PathnexEC2" {
    ami                 =  "xy--------"
    instance_type       = "t2.medium"

    subnet_id           = "subent_0bnfijnjfnjwenf"


    tags = {
        Name = "PathnexEc2"
    }
  
}