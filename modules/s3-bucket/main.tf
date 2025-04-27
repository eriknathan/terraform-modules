resource "aws_s3_bucket" "bucket" {
  bucket = var.nome_bucket
  acl    = "private"

  tags = merge(
    var.tags,
    {
      Name = "s3-${var.project_name}-tf"
    }
  )
}
