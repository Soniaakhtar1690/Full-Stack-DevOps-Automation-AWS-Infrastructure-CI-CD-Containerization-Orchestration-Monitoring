variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project prefix"
  type        = string
  default     = "devops-ci-cd"
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs (AZs)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs (AZs)"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "key_name" {
  description = "Name for SSH key pair (must exist locally or created separately)"
  type        = string
  default     = "terraform-demo-key"
}

variable "public_key_path" {
  description = "Path to local public key file to create key pair if desired"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "jenkins_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "ansible_instance_type" {
  type    = string
  default = "t3.small"
}

variable "eks_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "eks_desired_capacity" {
  type    = number
  default = 2
}

variable "create_keypair" {
  type    = bool
  default = false
}
