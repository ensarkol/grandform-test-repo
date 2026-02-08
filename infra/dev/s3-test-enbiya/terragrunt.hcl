generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "eu-central-1"
}
EOF
}

terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git//?ref=v4.6.0"
}

inputs = {
  bucket = "test-enbiya"
  force_destroy = false
  object_ownership = "BucketOwnerEnforced"
  control_object_ownership = false
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
  attach_deny_insecure_transport_policy = false
  attach_require_latest_tls_policy = false
  attach_elb_log_delivery_policy = false
  attach_lb_log_delivery_policy = false
  attach_access_log_delivery_policy = false
  attach_cloudtrail_log_delivery_policy = false
  request_payer = "BucketOwner"
  object_lock_enabled = false

  tags = {
    Environment = "dev"
    ManagedBy   = "GrandForm"
  }
}
