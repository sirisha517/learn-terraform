data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice" //AMI NAME
  owners           = ["972179603668"] //OWNER
}

output "ami_id" {
  value = data.aws_ami.ami.image_id
}