output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "vpc_ipv6_subnet" {
  value = "${aws_vpc.main.ipv6_cidr_block}"
}

output "subnets" {
  value = ["${aws_subnet.subnets.*.id}"]
}
