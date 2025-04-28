resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = merge(
    var.tags,
    {
      Name = "s3-${var.project_name}-tf"
    }
  )
}
