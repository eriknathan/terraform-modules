variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (tags)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Lista de IDs de security groups"
}

variable "ami_id" {
  type        = string
  description = "AMI ID da instância EC2"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "ID da subnet onde a instância será lançada"
}
