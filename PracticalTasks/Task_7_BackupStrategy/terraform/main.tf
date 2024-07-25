# Define the AWS provider
provider "aws" {
  region = "eu-central-1" # Change to your preferred region
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "21.0.0.0/16"
}

# Create subnets
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "21.0.1.0/24"
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "21.0.2.0/24"
  availability_zone = "eu-central-1b"
}

# Create a security group
resource "aws_security_group" "rds_sg" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a DB subnet group
resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  tags = {
    Name = "MainDBSubnetGroup"
  }
}

# Create an RDS instance
resource "aws_db_instance" "default" {
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0.35"
  identifier             = "mydb"
  username               = "admin"
  password               = "password"
  db_subnet_group_name   = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  backup_retention_period = 7
  backup_window           = "03:00-04:00"

  skip_final_snapshot = true

  tags = {
    Name = "MyDatabaseInstance"
  }
}

# Disaster Recovery in a different region
provider "aws" {
  alias  = "disaster_recovery"
  region = "us-east-1" # Change to your preferred DR region
}

# Create a VPC for DR
resource "aws_vpc" "dr_vpc" {
  provider   = aws.disaster_recovery
  cidr_block = "10.1.0.0/16"
}

# Create subnets for DR
resource "aws_subnet" "dr_subnet1" {
  provider            = aws.disaster_recovery
  vpc_id              = aws_vpc.dr_vpc.id
  cidr_block          = "10.1.1.0/24"
  availability_zone   = "us-east-1a"
}

resource "aws_subnet" "dr_subnet2" {
  provider            = aws.disaster_recovery
  vpc_id              = aws_vpc.dr_vpc.id
  cidr_block          = "10.1.2.0/24"
  availability_zone   = "us-east-1b"
}

# Create a security group for DR
resource "aws_security_group" "dr_sg" {
  provider = aws.disaster_recovery
  vpc_id   = aws_vpc.dr_vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a DB subnet group for DR
resource "aws_db_subnet_group" "dr_subnet_group" {
  provider   = aws.disaster_recovery
  name       = "dr-main"
  subnet_ids = [aws_subnet.dr_subnet1.id, aws_subnet.dr_subnet2.id]

  tags = {
    Name = "DRDBSubnetGroup"
  }
}

# Disaster Recovery RDS Instance
resource "aws_db_instance" "dr_instance" {
  provider               = aws.disaster_recovery
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0.35"
  identifier             = "drmydb"
  username               = "admin"
  password               = "password"
  db_subnet_group_name   = aws_db_subnet_group.dr_subnet_group.name
  vpc_security_group_ids = [aws_security_group.dr_sg.id]

  # Point-in-time restore from automated backup
  restore_to_point_in_time {
    source_db_instance_identifier = aws_db_instance.default.id
    use_latest_restorable_time    = true
  }

  tags = {
    Name = "DRDatabaseInstance"
  }

  depends_on = [aws_db_instance.default]
}
