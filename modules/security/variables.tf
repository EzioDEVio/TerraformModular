
variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
}

variable "ssh_access_cidr" {
  description = "CIDR block to allow SSH access"
  default     = "0.0.0.0/0"  # It's recommended to restrict this to a specific IP range
}
