## 1️⃣ Terraform
# Create EC2 (choose: c5.xlarge / r5.2xlarge / r6i.4xlarge / c6i.8xlarge / c6a.12xlarge)
# - Security group
# - Key pair
# - EBS volume
# - Output IP


provider "aws" {
    region = "ap-south-1"
  
}

# Security Group
resource "aws_security_group" "sg" {
    name = "pathnex-sg"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = [ "0.0.0.0/0" ]

    }
}
# key pair
resource "aws_key_pair" "key" {
  key_name = "devops-key"
  public_key = file("~/.shh/id_rsa.pub")
}

resource "aws_instance" "ec2" {
    ami                    = "ami-xxxxxxxx"
    instance_type          = "c5.xlarge"
    key_name               = aws_key_pair.key.key_name
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags ={
        Name = "Pathnex-Server"
    }

}


resource "aws_ebs_volume" "ebs"  {
    availability_zone =  aws_instance.ec2.availability_zone
    size = 20
}

resource "aws_volume_attechment" "attach" {
    device_name = "/dev/sdf"
    volume_id   = aws_ebs_volume.ebs.id
    instance_id = aws_instance.ec2.id
}

output "public_ip" {
    value = aws_instance.ec2.public_ip
  
}







