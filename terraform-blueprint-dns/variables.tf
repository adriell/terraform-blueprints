variable "name" {
    description = "Nome do dominio"
    type        = string
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