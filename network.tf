resource "aws_vpc" "kubernetesVPC" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default" 
  enable_dns_support = "true" 
  enable_dns_hostnames = "true"
  tags = { 
    Name = "Kubernetes VPC" 
  } 
 }

resource "aws_internet_gateway" "IGW_TF" { 
  vpc_id = aws_vpc.kubernetesVPC.id
  tags = { 
    Name = "IGW_TF" 
  }
}

resource "aws_subnet" "public_subnet" {
  cidr_block = "10.0.0.0/24" 
  map_public_ip_on_launch = "true" 
  vpc_id = aws_vpc.kubernetesVPC.id
  tags = { 
    Name = "demo_public_subnet" 
  }
}
