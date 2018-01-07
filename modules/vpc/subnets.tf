resource "aws_subnet" "subnets" {
  count             = "${length(data.aws_availability_zones.available.names)}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  vpc_id            = "${aws_vpc.main.id}"

  ipv6_cidr_block = "${cidrsubnet(aws_vpc.main.ipv6_cidr_block, 8, count.index)}"
  cidr_block      = "${cidrsubnet(aws_vpc.main.cidr_block, 3, count.index)}"

  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true

  tags {
    Name        = "${var.environment}-${var.name}-sub-${data.aws_availability_zones.available.names[count.index]}"
    Application = "${var.name}"
    Environment = "${var.environment}"
  }
}
