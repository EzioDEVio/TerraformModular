data "aws_secretsmanager_secret" "ssh_key" {
  name = var.secret_name
}

data "aws_secretsmanager_secret_version" "ssh_key_version" {
  secret_id = data.aws_secretsmanager_secret.ssh_key.id
}

resource "aws_instance" "web_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.security_group_id]

  # Assume the IAM Instance Profile is created in the security module and passed as an output
  iam_instance_profile = var.iam_instance_profile

  user_data = var.user_data

  root_block_device {
    volume_type = "gp2"
    volume_size = 20
  }

  tags = {
    Name = "CICD-Web-Instance"
  }

  lifecycle {
    create_before_destroy = true
  }
}
