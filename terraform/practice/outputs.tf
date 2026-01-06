output "public_ip"{
    value = aws_instance.practise.public_ip
    sensitive = false
}

output "sg_id"{
    value = aws_security_group.allow.id
}