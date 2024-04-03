
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Dummy AMI ID
}

variable "instance_type" {
  description = "The instance type of the EC2 instance"
  type        = string
  default     = "t2.micro"  # Common default instance type
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
  type        = string
  default     = "subnet-123abc"  # Placeholder subnet ID
}

variable "key_name" {
  description = "The key pair name associated with the EC2 instance"
  type        = string
  default     = "my-key-pair"  # Example key pair name
}

variable "security_group_id" {
  description = "The ID of the security group associated with the EC2 instance"
  type        = string
  default     = "sg-09a123d7f661f89e4"  # Example security group ID
}

variable "iam_instance_profile" {
  description = "The IAM instance profile name or ARN to attach to the instance"
  type        = string
  default     = "arn:aws:iam::123456789012:instance-profile/MyInstanceProfile"  # Example IAM instance profile ARN
}

variable "user_data" {
  description = "User data script to initialize the EC2 instance"
  type        = string
  default     = "#!/bin/bash\necho Hello, World!"  # Example user data script
}

variable "secret_name" {
  description = "The name of the secret in AWS Secrets Manager that stores the SSH key"
  type        = string
}
