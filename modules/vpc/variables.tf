
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  default     = "MainVPC"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  default     = "MainSubnet"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
}

