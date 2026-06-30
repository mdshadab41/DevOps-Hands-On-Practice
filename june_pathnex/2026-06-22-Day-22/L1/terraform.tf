## Terraform — Security Group

resource "aws_security_group" "nephronix_sg" {
    name    = "nephronix-sg"
    vpc_id = aws_vpc.NephronixVPC.id



    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "Nephronix-SG"
    }
  
}
