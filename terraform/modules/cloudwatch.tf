resource "aws_cloudwatch_metric_alarm" "cpu_high" {
alarm_name = "${var.project}-cpu-high"
comparison_operator = "GreaterThanThreshold"
evaluation_periods = "2"
metric_name = "CPUUtilization"
namespace = "AWS/EC2"
period = "120"
statistic = "Average"
threshold = "80"
alarm_description = "Alert when CPU exceeds 80% for 4 minutes"
}
variable "project" { default = "nimbus" }
