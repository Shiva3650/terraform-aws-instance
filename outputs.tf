output "instance_id" {
  value = aws_instance.t3_small.id
}

output "public_ip" {
  value = aws_instance.t3_small.public_ip
}
