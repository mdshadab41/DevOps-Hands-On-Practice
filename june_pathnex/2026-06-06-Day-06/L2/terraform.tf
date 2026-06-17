resource "aws_vpc" "main"{
    cidr_block = "0.0.0.0/0"
}
resource "aws_subnet" "main" {
    vpc_id     = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
}
resource "aws_instance" "pathnex-ec2" {
    ami              = "ami-0abcd1234abcd1234"
    instance_type    = "t3.medium"
    subnet_id        =aws_subnet.main.id 

    tags = {
        Name = "Pathnex-EC2"
    } 

  
}