resource "aws_instance" "master-node" { 
  ami = var.AMI
  instance_type = var.INSTANCETYPE
  key_name = var.KEYPAIR
  root_block_device {
    volume_size = var.EC2Volume 
    volume_type = "gp2"
  }
  subnet_id = aws_subnet.public_subnet.id 
  vpc_security_group_ids = [aws_security_group.kubernetes-sg.id]
   tags = { 
    Name = "Master-Node" 
  } 
 }

resource "aws_instance" "worker-node1" { 
  ami = var.AMI
  instance_type = var.INSTANCETYPE
  key_name = var.KEYPAIR
  root_block_device {
    volume_size = var.EC2Volume 
    volume_type = "gp2"
  }
  vpc_security_group_ids = [aws_security_group.kubernetes-sg.id]
  subnet_id = aws_subnet.public_subnet.id 
  tags = { 
    Name = "Worker-Node" 
  }
}

resource "aws_instance" "worker-node2" { 
  ami = var.AMI
  instance_type = var.INSTANCETYPE
  key_name = var.KEYPAIR
  root_block_device {
    volume_size = var.EC2Volume 
    volume_type = "gp2"
  }
  vpc_security_group_ids = [aws_security_group.kubernetes-sg.id]
  subnet_id = aws_subnet.public_subnet.id 
  tags = { 
    Name = "Worker-Node" 
  }
}



resource  "aws_eip" "master-eip"{
    domain = "vpc"
    instance = aws_instance.master-node.id
}
resource  "aws_eip" "worker-eip1"{
    domain = "vpc"
    instance = aws_instance.worker-node1.id
}

resource  "aws_eip" "worker-eip2"{
    domain = "vpc"
    instance = aws_instance.worker-node2.id
}



