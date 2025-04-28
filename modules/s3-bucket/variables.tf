variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (tags)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}

variable "bucket_name" {
  type        = string
  description = "Nome do Bucket S3 que será criado. Deve ser único globalmente na AWS."
}
