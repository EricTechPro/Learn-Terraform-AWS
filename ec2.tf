# resource "aws_instance" "eric_server" {
#   ami           = data.aws_ami.EricTechAMI.id
#   instance_type = var.instance_type_env["prod"]


#   for_each          = toset(data.aws_availability_zones.EricTech_azones.names)
#   availability_zone = each.key
#   tags = {
#     "Name" = "Eric-Tech-Terraform-tf-ec2-${each.key}"
#   }
# }
