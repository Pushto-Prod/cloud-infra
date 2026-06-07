terraform {
required_version = ">= 1.5.0"
required_providers {
aws = {
sources = "hashicorp/aws"
version = "~> 5.0"
}
}
backend "s3"
{
region = var.aws_region
}
variable "aws_region" {
default = "us-east-1"
}

