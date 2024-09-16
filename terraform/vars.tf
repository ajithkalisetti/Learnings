variable "instance_type" {
  description = "EC2 instance type"
  default     = "m5.xlarge"
}

variable "region" {
  description = "EC2 instance region"
  default     = "us-east-1"
}

variable "name" {
  description = "EC2 instance name"
}

variable "ami_id" {
  description = "Amazon Machine Image (AMI) ID"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "key_pair_name" {
  description = "Key pair for SSH access"
  default     = "devops"
}

variable "security_group_ids" {
  description = "Security group IDs"
  type        = list(string)
}

