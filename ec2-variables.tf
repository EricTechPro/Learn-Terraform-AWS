variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.small"
}

variable "instance_type_list" {
  description = "EC2 Instance Type"
  type        = list(string)
  default     = ["t2.micro", "t3.micro", "t3.small"]
}

variable "instance_type_env" {
  description = "EC2 Instance Type Env"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "prod" = "t2.large"
  }
}

variable "tag_name" {
  description = "AWS Tag name"
  type        = string
  default     = "Eric-Tech-Terraform"
}

# AWS EC2 Image ID
variable "instance_ami_id" {
  description = "AMI Image ID"
  type        = string
  default     = "ami-0218d08a1f9dac831"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  type    = string
  default = "erictech-ssh-key"
}
