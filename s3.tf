resource "aws_s3_bucket" "artifacts" {
  bucket = lower("${var.project_name}-artifacts-${random_id.bucket_suffix.hex}")
  force_destroy = true
  tags = { Name = "${var.project_name}-artifacts" }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}
