resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "MongoDb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "MongoDb"
  }
}
resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "Redis" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Redis"
  }
}
resource "aws_instance" "User" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "User"
  }
}
resource "aws_instance" "Cart" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Cart"
  }
}
resource "aws_instance" "MySql" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "MySql"
  }
}
resource "aws_instance" "Shipping" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Shipping"
  }
}
resource "aws_instance" "RabbitMq" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "RabbitMq"
  }
}
resource "aws_instance" "Payment" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Payment"
  }
}
resource "aws_instance" "Dispatch" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Dispatch"
  }
}