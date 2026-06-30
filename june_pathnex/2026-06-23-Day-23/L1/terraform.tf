## Terraform — Elastic IP

resource "aws_eip" "nephronix_eip" {
    instance = aws_instance.NephronixEC2.id


    tags = {
        Name = "Nephronix-EIP"
    }
  
}
