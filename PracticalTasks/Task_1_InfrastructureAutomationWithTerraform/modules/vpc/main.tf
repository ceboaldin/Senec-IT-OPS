module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.9.0"

  name = "vpc"

  cidr             = var.vpc_cidr_block
  azs              = var.avail_zone
  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets

  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = var.env_prefix
  }
}
