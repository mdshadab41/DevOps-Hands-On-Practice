## Terraform — Variables, Outputs, tfvars

# variables.tf 
variable "instance_type" {
    default = "c6a.12xlarge"
}

# main.tf
resource "aws_instance" "nephronix_server" {
    ami            = "ami-0abcd1234abcd1234"
    instance_type  = var.instance_type
}

# output 
output "nephronix_ip" {
    value = aws_instance.NephronixServer.public_ip
}