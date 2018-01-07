output "ecs_arn" {
  value = "${aws_ecs_cluster.main.id}"
}
