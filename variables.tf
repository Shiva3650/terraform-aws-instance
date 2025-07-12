variable "aws_region" {
  description = "AWS region to deploy into"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}
