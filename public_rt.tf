resource "aws_route_table" "public_rt_1" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test_igw.id
  }

  tags = {
    Name = "Public_Route_Table_1",
  }
}

resource "aws_route_table" "public_rt_2" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test_igw.id
  }

  tags = {
    Name = "Public_Route_Table_2",
  }
}

resource "aws_route_table_association" "public_1_association" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_rt_1.id
}

resource "aws_route_table_association" "public_2_association" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_rt_2.id
}