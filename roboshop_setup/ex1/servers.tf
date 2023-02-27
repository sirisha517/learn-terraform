resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "front-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "MongoDb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "MongoDb"
  }
}
resource "aws_route53_record" "MongoDb" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "MongoDb-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.MongoDb.private_ip]
}
resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "catalogue-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "Redis" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Redis"
  }
}
resource "aws_route53_record" "Redis" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "Redis-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Redis.private_ip]
}
resource "aws_instance" "User" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "User"
  }
}
resource "aws_route53_record" "User" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "User-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.User.private_ip]
}
resource "aws_instance" "Cart" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Cart"
  }
}
resource "aws_route53_record" "Cart" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "Cart-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Cart.private_ip]
}
resource "aws_instance" "MySql" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "MySql"
  }
}
resource "aws_route53_record" "MySql" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "MySql-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.MySql.private_ip]
}
resource "aws_instance" "Shipping" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Shipping"
  }
}
resource "aws_route53_record" "Shipping" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "Shipping-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Shipping.private_ip]
}
resource "aws_instance" "RabbitMq" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "RabbitMq"
  }
}
resource "aws_route53_record" "RabbitMq" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "RabbitMq-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.RabbitMq.private_ip]
}
resource "aws_instance" "Payment" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "Payment"
  }
}
resource "aws_route53_record" "MongoDb" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "Payment-dev.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Payment.private_ip]
}
