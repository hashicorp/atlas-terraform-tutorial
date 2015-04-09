resource "aws_security_group" "allow_all" {
  name = "allow_all"
  description = "Allow all inbound traffic"

  ingress {
      from_port = 0
      to_port = 65535
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "web" {
    instance_type = "t2.micro"

    # Trusty 14.04
    ami = "ami-10b68a78"

    security_groups = ["${aws_security_group.allow_all.name}"]

    # This will create 1 instances
    count = 1
}
