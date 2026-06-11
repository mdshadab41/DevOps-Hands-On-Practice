# resource "aws_instance" "nephronix_server" {
#       ami          = "ami-0c55b159cbfafe1f0"
#       instance_type = "t3.medium"


#       tags = {
#         Name = "Nephronix-Output-EC2"
#       }
  
# }

# output "nephronix_public_ip" {
#     value      = aws_instance.nephronix_server.public_ip 
#     description = "Public IP of the Nephronix EC2 instance"
# }

# output "nephronix_instance_id" {
#     value       = aws_instance.nephronix_server.id 
#     description = "EC2 Instance ID"
# }

# output "nephronix_availability_zone" {
#     value       = aws_instance.nephronix_server.availability_zone
#     description = "AZ where EC2 is deployed"
# }

provider "aws" {
    region  = "ap-south-1"
}
resource "aws_instance" "nephronix_server" {
    ami             = "ami-0c55b159cbfafe1f0"
    instance_type   = "t3.micro"


    tags = {
        Name = "Nephronix-Final-EC2"
    }
  
}


output "nephronix-public_ip"{
    value       = aws_instance.nephronix_server.public_ip
    description = "Public IP of EC2 instance"
}

output "nephronix_instance_id" {
    value    = aws_instance.nephronix_server.instance_id 
    description = "EC2 instance id"
}

output "nephronix-az" {
    value  = aws_instance.nephronix_server.availability_zone
    description = "AZ where EC2 is deployed"
}
