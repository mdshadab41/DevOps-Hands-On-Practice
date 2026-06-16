## Terraform — Create S3 Bucket

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucker" "nephronix_bucker" {
    bucket    = "nephronix-health-data-bucket"


    tags = {
        Name = "Nephrnix Bucket"
    }
  
}
