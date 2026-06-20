// Terraform — Configure Security Groups for EC2

resource "aws_security_group" "nephronix_sq" {
    name_prefix =  "nephronix-sg"
    description = "allow SSH and HTTP"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
