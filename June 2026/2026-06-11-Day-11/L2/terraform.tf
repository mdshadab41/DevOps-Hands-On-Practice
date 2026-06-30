#  Terraform — Provision EC2 with Elastic IP

resource "aws_eip" "nephronix_eip" {
    instance   = aws_instance.nephronix_ec2.id 
}
resource "aws_instance" "nephronix_ec2" {
    ami           = "ami-0abcd1234abcd1234"
    instance_type = "t3.medium"


    tags = {
        Name = "Nephronix-EC2"
    }
  
}