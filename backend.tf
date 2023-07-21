terraform {
  backend "s3" {
    encrypt = false
    bucket = "mymuc"
    key = "mybucket"
    region = "us-west-1"
    dynamodb_table = "mydynamo"
    
  }
}