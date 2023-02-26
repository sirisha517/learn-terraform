variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "inputs" {}

variable "sample5" {
  default = "hello"
}
variable "sample6" {
  default = [ "Hello", 1000, true, "world" ]
}

variable "sample7" {
  default = {
    string = "hello"
    number = 53
    boolean = true
  }
}

output "types" {
  value = "variable sample5 - ${var.sample5} , First values in list - ${var.sample6[0]}, Boolean value of Map  = ${var.sample7["boolean"]}"
}