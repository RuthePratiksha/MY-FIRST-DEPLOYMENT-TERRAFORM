resource "aws_route_table" "Pratiksha_public_route_table" {
  vpc_id = aws_vpc.vpc-Pratiksha.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public_internet_gateway.id
  }
  tags = {
    Name = "RT Public: For Pratiksha Project "
  }
}