# Terraform — Create S3 Bucket with Versioning and Logging

resource "aws_s3_bucket" "nephronix_bucker" {
    bucket = "nephronix-bucket"
    versioning {
        enabled = true 
    }

    logging {
        target_bucket = "pathnex-log-bucket"
        target_prefix = "logs/"
    }

}