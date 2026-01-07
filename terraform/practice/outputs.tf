output "public_ip"{
    value = module.ec2.public
}

output "private_ip"{
    value = module.ec2.private
}