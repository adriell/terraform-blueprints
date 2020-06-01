variable "record_name" {
    description = "Entrada de DNS da aplicação"
    type        = string
}

variable "name" {
    description = "Nome da Aplicação"
    type        = string
}

variable "domain_name" {
    description = "Dominio da Aplicação"
    type        = string
}


variable "bucket" {
    description = "Bucket do remote state"
    type        = string
}

variable "enabled" {
    description = "Habilita a criação de um ALB"
    type        = bool
    default     = false
}
variable "create_http_listener_rule"{
    description = "Habilita a criação de um custom listener"
    type        = bool
    default     = true
}

variable "listener_arn" {
    description = "Listener existe para adicionar a rule"
    type        = string
    default     = null
}

variable "health_check_path" {
    description = "Health check do target group"
    type        = string
}

variable "instance_type" {
  description = "Tipo (classe) da instância"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nome do Key Pair a ser usado para a instância"
  type        = string
  default     = ""
}

variable "alb_dns_name" {
  description = "Nome do DNS"
  type        = string
}

variable "alb_name" {
  description = "Nome do ALB"
  type        = string
  default     = null
}

variable "alb_zone_id" {
  description = "ID da zona do load balance"
  type        = string
}

variable "tags" {
  description = "Map de tags da instância e dos volumes"
  type        = map(string)
  default     = {}
}

variable "user_data" {
  description = "User data utilizado ao provisionar a instância"
  type        = string
  default     = null
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
    description = "Descição do SG"
    type        = string
    default     = null
}

variable "ingress_rules" {
    description = "Lista de regras de entrada"
    type        = any
    default     = []
}

variable "egress_rules" {
    description = "Lista de regras de saida"
    type        = any
    default     = []
}