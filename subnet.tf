# Setup public subnet
resource "aws_subnet" "aws_Pratiksha_public_subnets" {
  count      = length(var.cidr_public_subnet)
  vpc_id     = aws_vpc.vpc-Pratiksha.id
  cidr_block = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.Pratiksha_availability_zone, count.index)

  tags = {
    Name = "Subnet-Public : Public Subnet ${count.index + 1}"
  }
}

