data "aws_secretsmanager_secret" "rds_secret" {
  name = "MyRDSSecret"
}

data "aws_secretsmanager_secret_version" "rds_secret_version" {
  secret_id = data.aws_secretsmanager_secret.rds_secret.id
}

locals {
  rds_credentials = jsondecode(data.aws_secretsmanager_secret_version.rds_secret_version.secret_string)
}

resource "aws_db_instance" "rds_db" {

  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0.35"
  identifier             = "mydb"
  username               = local.rds_credentials["username"]
  password               = local.rds_credentials["password"]

  skip_final_snapshot  = true
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.default.name

  tags = {
    Name = "RDS_instance"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "db_subnetgroup"
  subnet_ids = var.private_subnets

  tags = {
    Name = "DBSubnetGroup"
  }
}