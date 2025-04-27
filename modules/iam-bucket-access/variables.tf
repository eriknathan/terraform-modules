variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (tags)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}


variable "user_name" {
  description = "Nome do usuário IAM."
  type        = string
}

variable "bucket_arn" {
  description = "ARN do bucket para conceder acesso."
  type        = string
}

