## Terraform — RDS Skeleton (MySQL)

resource "aws_db_instance" "nephronix_rds"{
    allocated_storage = 20 
    engine            = "mysql"
    instance_class    = "db.t3.micro"
    username          = "admin"
    password          = "Nepronix123"
    skip_final_snapshot = true 
}