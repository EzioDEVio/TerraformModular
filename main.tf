
module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr         = var.vpc_cidr
  subnet_cidr      = var.subnet_cidr
  availability_zone = var.availability_zone
}

module "security" {
  source          = "./modules/security"
  vpc_id          = module.vpc.main_vpc_id
  ssh_access_cidr = var.ssh_access_cidr  # Ensure this variable is defined and passed correctly
}

module "ec2" {
  source               = "./modules/ec2"
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = module.vpc.main_subnet_id
  security_group_id    = module.security.web_sg_id
  iam_instance_profile = module.security.iam_instance_profile_arn
  user_data            = var.user_data
  secret_name          = var.secret_name  # Ensure this variable is defined and passed correctly
}
