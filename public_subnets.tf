resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.availability_zone_a

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = var.availability_zone_b

  tags = {
    Name = "Public Subnet 2"
  }
}