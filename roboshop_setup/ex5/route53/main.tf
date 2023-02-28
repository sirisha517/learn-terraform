resource "aws_route53_record" "record" {
  zone_id = "Z0640963AEF75NOLDKGO"
  name    = "${var.component}.devops517test.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}