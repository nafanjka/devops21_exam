
variable "region" {
  default     = "us-west-2"
  description = "The AWS region your resources will be deployed"
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default = "AKIAU6GU3OFRMQF47AJO"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default = "YrM+w3uzj/zVcs/xxI5+Q15PVCvCnLUEVeQnCnP+"
} 

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "devops21-final-task-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
