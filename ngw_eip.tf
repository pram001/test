resource "aws_nat_gateway" "public_nat_1" {
  allocation_id = aws_eip.public_eip_1.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "Public_NAT_1"
  }

  depends_on = [aws_internet_gateway.test_igw]
}

resource "aws_nat_gateway" "public_nat_2" {
  allocation_id = aws_eip.public_eip_2.id
  subnet_id     = aws_subnet.public_2.id

  tags = {
    Name = "Public_NAT_2"
  }

  depends_on = [aws_internet_gateway.test_igw]
}

resource "aws_eip" "public_eip_1" {
  vpc = true
}

resource "aws_eip" "public_eip_2" {
  vpc = true
}