# Terraform — Create EC2 with ALB (Application Load Balancer)

resource "aws_lb" "nephronix_lb" {
    name            = "nephronix-lb"
    internal        =  false 
    load_balancer_type = "application"
    security_groups = [aws_security_group.allow_ssh_http.id]
    subnets         = [aws_subnet.public.id]
}

resource "aws_instance" "nephrnix_ec2" {
    ami                = "ami-0abcd1234abcd1234"
    instance_type      = "t2.micro"
    security_groups    = [aws_security_group.allow_ssh_http.name]

    tags = {
        Name = "Nephronix-EC2"
    }
}
