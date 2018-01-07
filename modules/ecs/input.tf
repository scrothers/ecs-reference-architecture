variable "name" {
  type        = "string"
  description = "The name of the cluster being created in AWS."
}

variable "environment" {
  type        = "string"
  description = "The name of the environment stage being deployed to."
}
