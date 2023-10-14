resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.vpc-Pratiksha.id
  tags = {
    Name = "IGW: For Pratiksha Project"
  }
}