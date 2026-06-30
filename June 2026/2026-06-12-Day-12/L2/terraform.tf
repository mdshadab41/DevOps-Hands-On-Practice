// Terraform — Create a Load Balancer with EC2 Instances

resource "aws_lb" "nephronix_lb" {
    name        = "nephronix-lb"
    internal = false 
    load_balancer_type = "application"
    security_groups = [aws_security_group.allow_ssh_httpd.id]
    subnets        = [aws_subnet.public.id]
}

resource "aws_intance" "nephronix_ec2" {
    ami                    = "ami-0abcd1234abcd1234"
    instance_type          = "t2.micro"
    security_groups        = [aws_security_group.allow_ssh_httpd.name]
    
    tags = {
        Name = "Nephronix-EC2"
    }
  
}
