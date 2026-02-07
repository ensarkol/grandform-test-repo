terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git//?ref=v4.0.0"
}

inputs = {
  bucket = "1234"
  acl = "private"
  force_destroy = false
  block_public_acls = true
  block_public_policy = true

  tags = {
    Environment = "dev"
    ManagedBy   = "GrandForm"
  }
}
