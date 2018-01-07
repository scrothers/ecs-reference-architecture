resource "aws_ecs_cluster" "main" {
  name = "${var.environment}-${var.name}"
}
