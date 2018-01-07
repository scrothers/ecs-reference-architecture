variable "aws_profile" {
  type        = "string"
  description = "The name of the configured AWS profile to use."
  default     = "default"
}

variable "name" {
  type        = "string"
  description = "The name of the cluster being created in AWS."
  default     = "ecs_cluster"
}

variable "environment" {
  type        = "string"
  description = "The name of the environment stage being deployed to."
  default     = "sandbox"
}
