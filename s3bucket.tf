##S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "head-group7-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

##dynamoDB
resource "aws_dynamodb_table" "tf_example_table" {
  name           = "headtf-example-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}