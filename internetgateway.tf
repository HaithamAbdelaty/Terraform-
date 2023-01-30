resource "aws_internet_gateway" "i-g-w" {
  vpc_id = aws_vpc.haitham-vpc.id

  tags = {
    Name = "vpc_igw"
  }
}

