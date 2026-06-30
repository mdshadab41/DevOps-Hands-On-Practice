
provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "hell_ec2"{
    ami                  = "ami-0c55b159cbfafe1f0"
    instance_type        = "t3.micro"

    tags = {
        Name = "Hell EC2"
    }
}


output "hell_ec2_public_ip" {
    value = aws_instance.hell_ec2.public_ip
    description = "public_ip of hell ec2"
}