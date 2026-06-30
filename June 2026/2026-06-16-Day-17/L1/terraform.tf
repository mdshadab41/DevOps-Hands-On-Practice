## Terraform — Application Load Balancer

resource "aws_lb" "NephronixALB" {
    name                   =  "nephronix-alb"
    load_balancer_type = "application"
    subnets                = [aws_subnet.NephronixSubnet.id]  


    tags = {
        Name = "Nephronix-ALB"
    }
  
}
