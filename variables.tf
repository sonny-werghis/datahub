variable "datahub_helm_config" {
  description = "Datahub Helm Chart config"
  type        = any
  default     = {}
}

variable "prefix" {
  description = "local name"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "vpc id"
  type        = string
  default     = "	vpc-010cbd08f910415e6"
}

variable "vpc_private_subnets" {
  description = "vpc private subnets"
  type        = list(string)
  default     = ["subnet-07bbbfb522b51c39e", "subnet-0bff93fb6e8f821e2", "subnet-0fc3de7bf730944a7", "subnet-03c4d04c18786f6a2"]
}

variable "vpc_cidr" {
  description = "Cidr range for security group rules"
  type        = string
  default     = "10.101.3.0/24"
}
