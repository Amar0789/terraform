output "private_ip"{
    value = module.ec2.ips
}

output "public_ip"{
    value = module.ec2.ip
}

