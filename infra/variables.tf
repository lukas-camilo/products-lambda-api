# Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "The name of the application."
  type        = string
  default     = "products-lambda-api"
}

variable "log_group_prefix" {
  description = "The name of the log group."
  type        = string
  default     = "/aws/lambda/"
}