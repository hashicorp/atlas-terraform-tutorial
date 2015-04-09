output "address" {
    value = "Instance available: `ping ${aws_instance.web.public_dns}`"
}
