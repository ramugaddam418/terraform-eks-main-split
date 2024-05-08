#subnet creations

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"  # Set your desired CIDR block for the subnet
  availability_zone = "us-east-1a"  # Set your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "my_subnet"
  }
}

resource "aws_subnet" "my_subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"  # Set your desired CIDR block for the subnet
  availability_zone = "us-east-1b"  # Set your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "my_subnet2"
  }
}

resource "aws_subnet" "my_subnet3" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"  # Set your desired CIDR block for the subnet
  availability_zone = "us-east-1c"  # Set your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "my_subnet3"
  }
}
