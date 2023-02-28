variable "test" {
  default = {
   "catalogue" = {
     "private_ip" = "172.31.13.189"
     }
    "user" = {
      "private_ip" = "172.31.11.148"
    }
   }
   }

output "test" {
  value = var.test["catalogue"].private_ip
}