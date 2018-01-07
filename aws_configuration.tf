provider "aws" {
  alias   = "us-east-2"
  region  = "us-east-2"
  profile = "${var.aws_profile}"
}

provider "aws" {
  alias   = "us-west-2"
  region  = "us-west-2"
  profile = "${var.aws_profile}"
}

provider "aws" {
  alias   = "eu-west-1"
  region  = "eu-west-1"
  profile = "${var.aws_profile}"
}
