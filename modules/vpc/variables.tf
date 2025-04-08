variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (tags)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR da VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR da subnet pública"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  type        = string
  description = "Zona de disponibilidade da subnet"
  default     = "us-east-1a"
}

variable "vpc_name" {
  type        = string
  description = "Nome da VPC e seus recursos"
  default     = "vpc-modular"
}