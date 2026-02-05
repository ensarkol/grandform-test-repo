terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git//?ref=v4.0.0"
}

inputs = {
  bucket = "ensar1"
  acl    = "private"

  tags = {
    Environment = "stage"
    ManagedBy   = "GrandForm"
  }
}
