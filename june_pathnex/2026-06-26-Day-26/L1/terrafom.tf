// Terraform — Route53 Record

resource "aws_route53_record" "nephronix_record" {
    zone_id = "z12345555555"
    name    = "app.nephronix.com"
    type    = "A"
    ttl     = 300
    records = [aws_eip.nephronix_eip.public_ip]
  
}
