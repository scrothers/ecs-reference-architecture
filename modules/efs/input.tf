variable "name" {
  type        = "string"
  description = "The name of the cluster being created in AWS."
}

variable "environment" {
  type        = "string"
  description = "The name of the environment stage being deployed to."
}

variable "subnets" {
  type        = "list"
  description = "A list of subnets to create EFS endpoints in."
}
