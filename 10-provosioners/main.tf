resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "demo"
  }
  provisioner "remote-exec" {
    connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }

    inline = [
    "echo Hello"
    ]
  }
}

