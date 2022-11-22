provider "aws"{
region = "us-east-1"
access_key = "AKIAWLJR2CMHQE42BJ6F"
secret_key = "v4DHSUM9tQasxqmker5ywUYFaKugSoj59HHeahhX"
}
resource "aws_instance" "example"{
for_each = {
host-1="Ansible"
host-2="Docker"
}
ami = "ami-0b0dcb5067f052a63"
instance_type = "t2.micro"
tags={
name = "${each.value}"
}
}
