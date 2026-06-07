resource "aws_instance" "app_server" {
ami = var.ami_id
instance_type = var.instance_type
tags = { Name = "${var.project}-app", Environment = var.environment }
}
variable "ami_id" { default = "ami-0c02fb55956c7d316" }
variable "instance_type" { default = "t3.micro" }
variable "project" { default = "nimbus" }
variable "environment" { default = "production" }
