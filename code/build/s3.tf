provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "7c2e38b3-f98d-4460-a75a-bab8f6f69f16"
    git_commit           = "2d4ac03d4b336f5fcffc121071bd1209a6218c2f"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:38:57"
    git_last_modified_by = "52236879+d3p4rt@users.noreply.github.com"
    git_modifiers        = "52236879+d3p4rt"
    git_org              = "d3p4rt"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
