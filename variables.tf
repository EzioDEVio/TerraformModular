
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

# Plus all other variables needed for modules (omit for brevity)
variable "secret_name" {
  description = "The name of the secret in AWS Secrets Manager"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instance"
  type        = string
}


variable "user_data" {
  description = "User data to initialize the EC2 instance"
  type        = string
  default     = ""  # You can provide a default value or ensure to pass it when calling the module
}

variable "ssh_access_cidr" {
  description = "CIDR block to allow SSH access"
  type        = string
  default     = "0.0.0.0/0"  # It's recommended to restrict this to a specific IP range in production
}


