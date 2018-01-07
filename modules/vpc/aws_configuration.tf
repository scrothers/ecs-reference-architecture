provider "aws" {}

data "aws_availability_zones" "available" {
  state = "available"
}
