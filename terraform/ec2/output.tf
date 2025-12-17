output "ip"{
    value = aws_instance.tf.private_ip
}
output private_ip {
    value = aws_instance.tf.public ip
}
output instance_id {
    value = aws_instance.tf.instance_id
}