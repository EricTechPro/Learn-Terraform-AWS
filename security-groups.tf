# Web Public Security Group
module "web_server_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.8.0"
  name    = "public-subnets-sg-web"

  # Associate Security Group with the VPC
  vpc_id = module.vpc.vpc_id

  # Ingress Rules
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rules
  egress_rules = ["all-all"]

  tags = {
    "Name" : "${local.appName}-public-subnets-sg-web"
  }
}

# App Private Security Group
module "app_server_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.8.0"
  name    = "private-subnets-sg-app"

  # Associate Security Group with the VPC
  vpc_id = module.vpc.vpc_id

  # Ingress Rules
  ingress_rules       = ["http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Egress Rules
  egress_rules = ["all-all"]

  tags = {
    "Name" : "${local.appName}-private-subnets-sg-app"
  }
}

# Database Private Security Group
module "db_server_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.8.0"
  name    = "private-subnets-sg-db"

  # Associate Security Group with the VPC
  vpc_id = module.vpc.vpc_id

  # Ingress Rules
  ingress_rules       = ["mysql-tcp", "postgresql-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Egress Rules
  egress_rules = ["all-all"]

  tags = {
    "Name" : "${local.appName}-private-subnets-sg-db"
  }
}
