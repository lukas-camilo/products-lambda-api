resource "aws_cloudwatch_log_group" "lambda_log" {
  name              = "${var.log_group_prefix}${var.name}"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = "${var.name}-lambda-log-stream"
  log_group_name = aws_cloudwatch_log_group.lambda_log.name
}