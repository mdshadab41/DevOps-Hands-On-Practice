// Terraform — Multi-Module Infrastructure with Outputs

module "nephronix_vpc" {
    source = "./vpc"
  
} 
module "nephronix_instance" {
    source = "./instance"
    vpc_id = module.nephronix_vpc.vpc_id
}
output "instance_id" {
    value   = module.nephronix_instance.instance_id
}

