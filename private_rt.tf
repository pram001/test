resource "aws_route_table" "private_rt_1" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "Private_Route_Table_1",
  }
}

resource "aws_route_table" "private_rt_2" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "Private_Route_Table_2",
  }
}

resource "aws_route_table_association" "private_1_association" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private_rt_1.id
}

resource "aws_route_table_association" "private_2_association" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private_rt_2.id
}