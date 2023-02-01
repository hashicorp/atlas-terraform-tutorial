# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "address" {
    value = "Go to `${aws_instance.main.public_ip}` to view the deployed instance. It may take a minute or two for the instance to provision"
}
