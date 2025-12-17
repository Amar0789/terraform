output "ip"{
    value = aws_instance.tf[*].private_ip
}