module "efs_us-east-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/efs"

  name        = "${var.name}"
  environment = "${var.environment}"
  subnets     = "${module.vpc_us-east-2.subnets}"

  providers = {
    aws = "aws.us-east-2"
  }
}

module "efs_us-west-2" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/efs"

  name        = "${var.name}"
  environment = "${var.environment}"
  subnets     = "${module.vpc_us-west-2.subnets}"

  providers = {
    aws = "aws.us-west-2"
  }
}

module "efs_eu-west-1" {
  source = "github.com/scrothers/ecs-reference-architecture/modules/efs"

  name        = "${var.name}"
  environment = "${var.environment}"
  subnets     = "${module.vpc_eu-west-1.subnets}"

  providers = {
    aws = "aws.eu-west-1"
  }
}
