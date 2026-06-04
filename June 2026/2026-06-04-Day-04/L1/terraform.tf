## 🔹 Terraform — EC2 with Key Pair (c6i.8xlarge)

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "PathnexKey" {
  key_name = "PathnexKey"
  public_key = "sss-rsa AAA....."
}

resource "aws_instance" "PathnexEc2" {
  ami                  =  "ami-0abcd1234abcd1234"
  instance_type        = "c6i.8xlarge"
  key_name             = aws_key_pair.PathnexKey.key_name



  tags = {
    Name = "Pathnex-EC2"
  } 
  
}