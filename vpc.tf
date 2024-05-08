#vpc creation
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Set your desired CIDR block for the VPC

  tags = {
    Name = "my_vpc"
  }
}