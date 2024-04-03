
output "web_sg_id" {
  value = aws_security_group.instance_sg.id  # Replace with the actual name of the security group resource
}

output "iam_instance_profile_arn" {
  value = aws_iam_instance_profile.ec2_instance_profile.arn
}
