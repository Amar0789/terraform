output "ip"{
    value = aws_instance.tf.private_ip
}
output private_ip {
    value = aws_instance.tf.public_ip
}
