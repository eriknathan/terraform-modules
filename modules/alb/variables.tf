variable "vpc_id" {
  type        = string
  description = "Production VPC ID"
}

variable "instance_id" {
  type        = string
  description = "EC2 Instance ID"
}

variable "tg_name" {
  type        = string
  description = "ALB Listener Production DNS Name"
}

variable "alb_listener_dns_name" {
  type        = string
  description = "ALB Listener Production DNS Name"
}

variable "alb_zone_id" {
  type        = string
  description = "ALB Listener Production Zone ID"
}

variable "alb_listerner_arn" {
  type        = string
  description = "ALB Listener Production ARN"
}

variable "alb_port_attachment" {
  type        = number
  description = "Port para atrelar aplicação ao ALB"
}

variable "alb_endpoint" {
  type        = string
  description = "ALB Listener Production ARN"
}

variable "route53_endpoint" {
  type        = string
  description = "ALB Listener Production ARN"
}

variable "route53_zone_id" {
  type        = string
  description = "ALB Listener Production ARN"
}