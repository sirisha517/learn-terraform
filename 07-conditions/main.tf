resource "aws_instance" "test" {
  ami = ""
  instance_type = var.instance_type
}

variable "instance_type" {

}