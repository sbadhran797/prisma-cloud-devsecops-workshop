provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "e7b01fbe-84fe-40df-902c-8b037bc4f0ef"
    git_commit           = "ac3d3132c4f9b214651bac6cb6ba268fcbc0f3d5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:51:05"
    git_last_modified_by = "59896379+sbadhran797@users.noreply.github.com"
    git_modifiers        = "59896379+sbadhran797"
    git_org              = "sbadhran797"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
