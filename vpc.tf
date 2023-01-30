resource "aws_vpc" "haitham-vpc" {
  cidr_block = "10.0.0.0/16"
  tags={ 
    "Name"="vpc-lap2-haitham"
  }
}
