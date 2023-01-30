resource "aws_subnet" "haitham-subnet" {
  vpc_id = aws_vpc.haitham-vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "haitham-subnet"
  }
}
