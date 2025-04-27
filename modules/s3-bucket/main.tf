resource "aws_s3_bucket" "bucket" {
  bucket = "s3-bucket-${var.project_name}-tf"
  acl    = "private"

  tags = merge(
    var.tags,
    {
      Name = "s3-${var.project_name}-tf"
    }
  )
}
