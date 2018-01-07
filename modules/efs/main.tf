resource "aws_efs_file_system" "main" {
  creation_token = "${var.environment}-${var.name}-efs"

  tags {
    Name        = "${var.environment}-${var.name}-efs"
    Application = "${var.name}"
    Environment = "${var.environment}"
  }
}

resource "aws_efs_mount_target" "ecs" {
  count          = "${length(var.subnets)}"
  file_system_id = "${aws_efs_file_system.main.id}"
  subnet_id      = "${element(var.subnets, count.index)}"
}
