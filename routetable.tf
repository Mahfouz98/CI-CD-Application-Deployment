resource "aws_route_table" "PublicRouteTable" { 
  vpc_id = aws_vpc.kubernetesVPC.id
  tags = { 
    Name = "PublicRouteTable" 
  } 
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.IGW_TF.id 
  }
}


resource "aws_route_table_association" "PublicRouteTableAssociate" { 
  subnet_id = aws_subnet.public_subnet.id 
  route_table_id = aws_route_table.PublicRouteTable.id 
}

