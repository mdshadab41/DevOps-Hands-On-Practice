## 🔹 Terraform — RDS Skeleton

resource "aws_db_instance" "NephronixRDS"{
    allocated_storage     = 20 
    engine                = "mysql"
    instance_class        = "db.t3.micro"
    name                  = "nephronixdb"
    username              = "admin"
    password              = "pass123445342"
    skip_final_snapshot = true
}