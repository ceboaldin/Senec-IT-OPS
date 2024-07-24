output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnets
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

# output "rds_instance_endpoint" {
#   value = module.rds.db_instance_endpoint
# }