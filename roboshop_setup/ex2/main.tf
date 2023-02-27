data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice" //AMI NAME
  owners           = ["973714476881"] //OWNER
}

resource "aws_instance" "frontend" {
  count = length(var.instance)
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
}

variable "instance" {
  default = ["cart", "catalogue", "user", "payment" ,"shipping"]
}