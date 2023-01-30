resource "aws_route_table" "dummy-table" {
  vpc_id = aws_vpc.haitham-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.i-g-w.id
  }


  tags = {
    Name = "routingtabledummy"
  }
}
resource "aws_route_table_association" "public-rta" {
  subnet_id      = aws_subnet.haitham-subnet.id
  route_table_id = aws_route_table.dummy-table.id
}
