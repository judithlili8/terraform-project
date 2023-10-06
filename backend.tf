terraform {
  backend "s3" {
    bucket         = "head-group7-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "headtf-example-table"
  }
}