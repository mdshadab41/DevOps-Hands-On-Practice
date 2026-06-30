// Terraform — Multi-Region Auto-scaling Group with ALB

resource "aws_lb" "nephronix_lb" {
    name                  = "nephronix-lb"
    internal              = false 
    load_balancer_type    = "application"
    security_groups       = [aws_security_group.allow_ssh_http.id]
    subnets            = [aws_subnet.public.id, aws_subnet.public2.id]
  
}

resource "aws_autoscaling_group" "nepronix_asg" {
    desired_capacity = 3
    max_size = 5
    min_size = 2
    vpc_zone_identifier = [aws_subnet.public.id, aws_subnet.public2.id]
    launch_configuration = aws_launch_configuration.pathnex_config.id
}



