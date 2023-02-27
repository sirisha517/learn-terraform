resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "instance_type" {

}
variable "create_instance" {}
variable "instance" {}

resource "aws_instance" "test" {
  count = var.create_instance == "true" ? 1 : 0
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}