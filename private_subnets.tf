resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.availability_zone_a

  tags = {
    Name = "private Subnet 1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.availability_zone_b

  tags = {
    Name = "private Subnet 2"
  }
}