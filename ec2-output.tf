# output "instance_availability_zone" {
#   value = aws_instance.eric_server[0].availability_zone
# }
# output "instance_ami" {
#   value = aws_instance.eric_server[0].ami
# }

# output "instance_publicip_list" {
#   description = "EC2 ips"
#   value       = [for instance in aws_instance.eric_server : instance.public_ip]
# }

# output "instance_availability_zone_list" {
#   value = aws_instance.eric_server[*].availability_zone
# }

# output "instance_privateip_map" {
#   value = { for instance in aws_instance.eric_server : instance.id => instance.private_ip }
# }

# output "instance_tagName_map" {
#   value = { for instance in aws_instance.eric_server : instance.id => lookup(instance.tags, "Name") }
# }

# output "EricTech_azones" {
#   value = data.aws_availability_zones.EricTech_azones.names
# }
