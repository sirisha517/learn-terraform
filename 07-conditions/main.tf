resource "aws_instance" "test" {
  ami = ""
  instance_type = var.intance_type
}

variable "intance_type" {

}