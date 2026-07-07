variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "private_subnet_ids" {
  type = list(string)
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

variable "aws_region" {
  type = string
}


