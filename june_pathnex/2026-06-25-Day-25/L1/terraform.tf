## Terraform — EC2 Key Pair Output

resource "aws_key_pair" "neohronix_key" {
    key_name  = "NephronixKey"
    public_key = file("~/.ssd/id_rsa.pub")
  
}
output "nephronix_key_name" {
    value = aws_key_pair.NephronixKey.pub
  
}
