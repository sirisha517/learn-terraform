# Request a spot instance
resource "aws_spot_instance_request" "node1" {
  ami           = "ami-072a415581f03e0ce"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  wait_for_fulfillment = true #only for spot request
  tags = {
    Name = "promo-test-server"
  }
}
resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "promo-test-server"
}


# Request a spot instance
resource "aws_spot_instance_request" "node2" {
  ami                    = "ami-072a415581f03e0ce"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0cd76acf87f0514bd"]
  tags                   = {
    Name = "promo-test-node"
  }
}
  resource "aws_ec2_tag" "node2" {
    resource_id = aws_spot_instance_request.node2.spot_instance_id
    key         = "Name"
    value       = "promo-test-node"
  }