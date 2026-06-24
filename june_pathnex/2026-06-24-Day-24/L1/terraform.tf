// Terraform — ALB Listener

resource "aws_lb_listener" "nephronix_listener" {
     load_balancer_arn             = aws_lb.NephronixALB.arn 
     port                           = 80
     protocol                       = "HTTP"


     default_action {
       type = "fixed-response"
       fixed_response {
         content_type = "text/plain"
         message_body = "Nephronix ALB Running"
         status_code = "200"
       }
     }

}
