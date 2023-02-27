data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice" //AMI NAME
  owners           = ["973714476881"] //OWNER
}

resource "aws_instance" "frontend" {
 for_each = var.instance
  ami = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instance" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}

variable "names" {
  default = ["catalogue", "user"]
}

variable "type" {
  default = ["t3.micro", "t3.small"]
}
resource "aws_instance" "instances" {
  count = length(var.names)
  ami = data.aws_ami.ami.image_id
  instance_type = var.type
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = var.names[count.index]
  }
}
