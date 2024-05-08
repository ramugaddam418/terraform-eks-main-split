#creating routing table
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"  # Destination CIDR block for the route
    gateway_id = aws_internet_gateway.my_igw.id  # ID of the internet gateway or other gateway
  }
}
