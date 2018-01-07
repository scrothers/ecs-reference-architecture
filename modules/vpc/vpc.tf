resource "aws_vpc" "main" {
  cidr_block           = "${cidrsubnet(var.network, 3, 0)}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  assign_generated_ipv6_cidr_block = true

  tags {
    Name        = "${var.environment}-${var.name}-vpc"
    Application = "${var.name}"
    Environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name        = "${var.environment}-${var.name}-igw"
    Application = "${var.name}"
    Environment = "${var.environment}"
  }
}

resource "aws_default_route_table" "default" {
  default_route_table_id = "${aws_vpc.main.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name        = "${var.environment}-${var.name}-rtb"
    Application = "${var.name}"
    Environment = "${var.environment}"
  }
}
