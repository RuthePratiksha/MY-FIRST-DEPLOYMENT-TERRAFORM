resource "aws_lb" "Pratiksha-lb" {
  name = "Pratiksha-lb"
  internal = false
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  security_groups = [aws_security_group.sgforloadbalancer.id]
  subnets = [aws_subnet.aws_Pratiksha_public_subnets.id]
  tags = {
    Name = "aws-alb"
  }
}