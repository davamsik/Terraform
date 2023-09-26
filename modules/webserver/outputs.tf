output "latest-ami" {
  value = data.aws_ami.latest-amazon-linux-image.id
}

output "dev-server-public-ip" {
  value = aws_instance.develop-server.public_ip
}
