resource "aws_instance" "private_ec2_1" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_1.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  key_name = "cross"

  tags = {
    Name = "Private_Instance_1"
  }
}

resource "aws_instance" "private_ec2_2" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_2.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "Private_Instance_1"
  }
}

resource "aws_security_group" "private_sg" {
  vpc_id = aws_vpc.test_vpc.id
  name   = "Private_Security_Group"

  ingress {
    description = "Allow SSH over internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}