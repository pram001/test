variable "aws_region" {
  type        = string
  description = "AWS Region in which resources are provisioned"
}

variable "aws_ami" {
  type        = string
  description = "AWS ami for EC2 Instance creation"
}

variable "instance_type" {
  type        = string
  description = "Instance type for EC2 Instance creation"
}

variable "availability_zone_a" {
  type        = string
  description = "AZ for subnet in a"
}

variable "availability_zone_b" {
  type        = string
  description = "AZ for subnet in b"
}