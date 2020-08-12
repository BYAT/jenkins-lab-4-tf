output "bastion" {
  value = aws_instance.bastion.public_ip
}
output "api" {
  value = aws_instance.api.*.private_ip
}
output "webserver" {
  value = aws_instance.webserver.*.private_ip
}