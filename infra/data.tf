data "aws_caller_identity" "current" {}

locals {
  cloudwatch_log_group_arn = "arn:aws:logs:${var.region}:${data.aws_caller_identity.current.account_id}:log-group:${var.log_group_prefix}${var.name}*"
}