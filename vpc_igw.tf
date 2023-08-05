resource "aws_vpc" "test_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "My VPC"
  }
}

resource "aws_internet_gateway" "test_igw" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "My IGW"
  }
}