variable "enabled"{
    description = "Habilita a criação do ALB"
    type        = bool
    default     = true
}

variable "name" {
    description = "Nome do ALB"
    type        = string
}

variable "subnet_ids" {
    description = "Lista com IDs das subnets onde o ALB será provisionado"
    type        = list(string)
    default     = null
}

variable "listener_port" {
    description = "Listener port do target group"
    type        = string
}

variable "health_check_path" {
    description = "Health check do target group"
    type        = string
    default     = "/"
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
variable "tags" {
  description = "Map de tags da instância e dos volumes"
  type        = map(string)
  default     = {}
}