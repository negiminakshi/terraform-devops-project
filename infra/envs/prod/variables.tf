variable "aws_region" {
  type = string
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}

variable "container_image" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "backup_retention_period" {
  type = number
}

variable "deletion_protection" {
  type = bool
}

variable "db_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}
