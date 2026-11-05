# Elastic IP
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "vshopshop-nat-eip"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "vshopshop-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
