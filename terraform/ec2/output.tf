output "ip"{
    value = aws_instance.ec2.public_ip
}
output "ips"{
    value = aws_instance.ec2.private_ip
}