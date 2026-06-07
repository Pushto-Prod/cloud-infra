resource "aws_iam_role_policy" "app_policy" {
name = "app-minimal-policy"
role = aws_iam_role.app_role.id
policy = jsonencode({
Version = "2012-10-17"
Statement = [{ Effect = "Allow", Action = ["s3:GetObject"], Resource = "arn:aws:s3:::nimbus-data/*" }]
})
}
