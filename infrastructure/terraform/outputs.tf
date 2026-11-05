
# VPC ID
output "vpc_id" {
  description = "The ID of the VShopShop VPC"
  value       = aws_vpc.main.id
}

# Public Subnet ID
output "public_subnet_id" {
  description = "The ID of the Public Subnet"
  value       = aws_subnet.public.id
}

# Private Subnet ID
output "private_subnet_id" {
  description = "The ID of the Private Subnet"
  value       = aws_subnet.private.id
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC"
  value       = aws_internet_gateway.igw.id
}

# NAT Gateway ID
output "nat_gateway_id" {
  description = "The ID of the NAT Gateway used for private subnet outbound internet access"
  value       = aws_nat_gateway.nat.id
}
