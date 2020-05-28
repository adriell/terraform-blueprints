variable "instance_count" {
  description = "Número de instâncias que serão provisionadas"
  type        = string
  default     = 1
}

variable "name" {
  description = "Nome da instância"
  type        = string
}

variable "instance_type" {
  description = "Tipo (classe) da instância"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Lista com IDs dos security groups que serão vinculados à instância"
  type        = list(string)
  default     = null
}

variable "key_name" {
  description = "Nome do Key Pair a ser usado para a instância"
  type        = string
  default     = null
}

variable "tags" {
  description = "Map de tags da instância e dos volumes"
  type        = map(string)
  default     = {}
}

variable "bucket" {
  description = "Bucket do remote state"
  type        = string
}

variable "bucket_key" {
  description = "Bucket Key do remote state"
  type        = string
}

variable "region" {
  description = "Região do bucket do remote state"
  type        = string
  default     = "us-east-1"
}

variable "description" {
  description = "Descrição do SG"
  type        = string
  default     = null
}

variable "ingress_rules" {
    default = []
    description = "Lista de regras de entrada"
    type = any
}

variable "egress_rules" {
    default = []
    description = "Lista de regras de saida"
    type = any
}