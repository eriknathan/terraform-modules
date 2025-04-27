output "usuario_nome" {
  description = "Nome do usuário IAM criado."
  value       = aws_iam_user.usuario.name
}

output "access_key_id" {
  description = "Access Key ID do usuário IAM."
  value       = aws_iam_access_key.chave_acesso.id
  sensitive   = true
}

output "secret_access_key" {
  description = "Secret Access Key do usuário IAM."
  value       = aws_iam_access_key.chave_acesso.secret
  sensitive   = true
}
