data "archive_file" "python_file" {
  type        = "zip"
  source_dir  = "../app/src/"
  output_path = "./lambda_function.zip"
}

resource "aws_lambda_function" "lambda_run" {
  filename         = "./lambda_function.zip"
  source_code_hash = data.archive_file.python_file.output_base64sha256
  function_name    = var.name
  role             = aws_iam_role.lambda_role.arn
  handler          = "./interfaces/api/lambda_handler.lambda_handler"
  runtime          = "python3.11"
  logging_config {
    log_format       = "JSON"
    log_group        = aws_cloudwatch_log_group.lambda_log.name
    system_log_level = "INFO"
  }
}