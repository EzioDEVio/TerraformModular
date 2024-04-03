
output "vpc_id" {
  value = module.vpc.main_vpc_id
}

output "subnet_id" {
  value = module.vpc.main_subnet_id
}

output "web_instance_public_ip" {
  value = module.ec2.web_instance_public_ip
}

output "web_security_group_id" {
  value = module.security.web_sg_id
}

output "iam_instance_profile_arn" {
  value = module.security.iam_instance_profile_arn
}
