resource "aws_security_group" "kubernetes-sg" {
  name = "kubernetes-SG" 
  vpc_id = aws_vpc.kubernetesVPC.id 
  description = "Allow all needed ports for kubernetes controller and worker nodes" 
   ingress { 
     from_port = 6109
     to_port = 6109
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
   ingress { 
     from_port = 8080
     to_port = 8080
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = -1
     to_port = -1
     protocol = "icmp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 22 
     to_port = 22 
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 80 
     to_port = 80
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 3000
     to_port = 10000
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 443
     to_port = 443
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 6443 
     to_port = 6443
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 2379 
     to_port = 2380
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 10250
     to_port = 10252
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }
  ingress { 
     from_port = 30000 
     to_port = 32767
     protocol = "tcp" 
     cidr_blocks = ["0.0.0.0/0"] 
  }

  egress { 
    from_port = 0 
    to_port = 0 
    protocol = "-1" 
    cidr_blocks = ["0.0.0.0/0"] 
  }

  tags = { 
    Name = "master-worker-sg" 
  }
}