variable "d1" {
  default = 5
}

resource "null_resource" "null" {
  count = var.d1
}

variable "d2" {
  default = ["apple", "banana"]
}

resource "null_resource" "d2" {
  count = length(var.d2)
}

variable "d3" {
  default = {
    apple = {
      name = "apple"
      count = 3
    }
    banana = {
      name = "banana"
      count = 3
    }
  }
}

resource "null_resource" "d3" {
  for_each = var.d3
}

output "FRUIT" {
  value = [ for i in var.d2 : upper(i)]
}