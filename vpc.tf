module "vpc_us-east-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/vpc"

  name        = "${var.name}"
  environment = "${var.environment}"
  network     = "${cidrsubnet("10.0.0.0/8", 5, 0)}"

  providers = {
    aws = "aws.us-east-2"
  }
}

module "vpc_us-west-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/vpc"

  name        = "${var.name}"
  environment = "${var.environment}"
  network     = "${cidrsubnet("10.0.0.0/8", 5, 1)}"

  providers = {
    aws = "aws.us-west-2"
  }
}

module "vpc_eu-west-1" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/vpc"

  name        = "${var.name}"
  environment = "${var.environment}"
  network     = "${cidrsubnet("10.0.0.0/8", 5, 2)}"

  providers = {
    aws = "aws.eu-west-1"
  }
}
