module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"
  # Terraform name
  name = "eric-tech-vpc"
  # IP address range
  cidr = "10.0.0.0/16"
  # Enable DNS hostnames
  enable_dns_hostnames = true
  # Enable DNS support
  enable_dns_support = true

  vpc_tags = {
    # Assign a tag with the label Name
    "Name" = "${local.appName}-vpc-2024"
  }

  azs             = ["us-east-1a", "us-east-1c"]
  public_subnets  = ["10.0.10.0/24", "10.0.11.0/24"]
  private_subnets = ["10.0.20.0/24", "10.0.21.0/24"]
  public_subnet_tags = {
    "Name" = "${local.appName}-public-subnets"
  }
  private_subnet_tags = {
    "Name" = "${local.appName}-private-subnets"
  }

  #########################################################
  # Database Subnet Configuration
  database_subnets = ["10.0.30.0/24", "10.0.31.0/24"]
  # Create a Database Subnet Group
  create_database_subnet_group = true
  # Create a Database Subnet Route Table
  create_database_subnet_route_table = true
  # Tags for the Database Subnets
  database_subnet_tags = {
    "Name" = "${local.appName}-database-subnets"
  }

}
