output "address" {
    value = "Instance available: `telnet ${aws_instance.main.public_ip} 5000`"
}
