output "efs_id" {
  value = "${aws_efs_file_system.main.id}"
}

output "efs_hostname" {
  value = "${aws_efs_file_system.main.dns_name}"
}
