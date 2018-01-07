module "ecs_us-east-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/ecs"

  name        = "${var.name}"
  environment = "${var.environment}"

  providers = {
    aws = "aws.us-east-2"
  }
}

module "ecs_us-west-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/ecs"

  name        = "${var.name}"
  environment = "${var.environment}"

  providers = {
    aws = "aws.us-west-2"
  }
}

module "ecs_eu-west-1" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/ecs"

  name        = "${var.name}"
  environment = "${var.environment}"

  providers = {
    aws = "aws.eu-west-1"
  }
}
