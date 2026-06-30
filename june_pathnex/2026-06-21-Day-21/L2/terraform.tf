# Terraform — Create S3 Bucket with Cross-Region Replication
resource "aws_s3_bucket" "nephronix_bucket" {
bucket    = "nephronix-backup-bucket"
region    = "us-eas-1"

versioning {
    enabled = true 
}

}

resource "aws_s3_bucket" "nephronix_bucket_eu" {
bucket    = "nephronix-backup-bucket"
region    = "eu-east-1"

versioning {
    enabled = true 
}

}

resource "aws_s3_bucker_object" "nephronix_backup_file" {
    bucket       = aws_s3_bucket.nephronix_bucket.bucket 
    key          = "backup.tar.gz"
    source       = "nephronix-backup.tar.gz"
  
}


