
output "master-node-ip" {
  value = aws_eip.master-eip.public_ip
}

output "worker-node1-ip" {
  value = aws_eip.worker-eip1.public_ip
}

output "worker-node2-ip" {
  value = aws_eip.worker-eip2.public_ip
}