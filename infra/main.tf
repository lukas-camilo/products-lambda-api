resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-bucket-test-s3"
  acl    = "private"
}