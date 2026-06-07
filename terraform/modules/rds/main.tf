resource "aws_db_instance" "main" {
identifier = "${var.project}-db"
engine = "postgres"
engine_version = "15.3"
instance_class = "db.t3.micro"
allocated_storage = 20
db_name = var.db_name
username = var.db_user
skip_final_snapshot = true
}
variable "project" { default = "nimbus" }
variable "db_name" { default = "nimbusdb" }
variable "db_user" { default = "admin" }
