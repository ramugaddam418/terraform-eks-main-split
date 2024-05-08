#routing table association
resource "aws_route_table_association" "my_subnet_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
  #map_public_ip_on_launch = true
}

resource "aws_route_table_association" "my_subnet_association2" {
  subnet_id      = aws_subnet.my_subnet2.id
  route_table_id = aws_route_table.my_route_table.id
  #map_public_ip_on_launch = true
}

resource "aws_route_table_association" "my_subnet_association3" {
  subnet_id      = aws_subnet.my_subnet3.id
  route_table_id = aws_route_table.my_route_table.id
  #map_public_ip_on_launch = true
}
