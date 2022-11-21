provider "aws"{
region = "us-east-1"
}
resource "aws_instance" "example"{
for_each = {
host-1="Ansible"
host-1="Docker"
}
ami = "ami-0b0dcb5067f052a63"
instance_type = "t2.micro"
tags{
name = "${each.value}"
}
}
