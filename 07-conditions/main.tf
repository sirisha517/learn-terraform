resource "aws_instance" "test" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}

variable "create_instance" {}


resource "aws_instance" "test1" {
  count = tobool(var.create_instance) == "true" ? 1 : 0
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}