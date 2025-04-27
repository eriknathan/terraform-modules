resource "aws_iam_user" "usuario" {
  name = "iam-${var.user_name}-s3-${var.project_name}-tf"

  tags = merge(
    var.tags,
    {
      Name = "iam-s3-${var.project_name}-tf"
    }
  )
}

resource "aws_iam_access_key" "chave_acesso" {
  user = aws_iam_user.usuario.name
}

resource "aws_iam_user_policy" "policy_acesso_bucket" {
  name = "AcessoAoBucket"
  user = aws_iam_user.usuario.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:*"
        ],
        Resource = [
          var.bucket_arn,
          "${var.bucket_arn}/*"
        ]
      }
    ]
  })
}
