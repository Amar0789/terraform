output "private_ip"{
    value = module.ec2.private_ip
}

output "public_ip"{
    value = module.ec2.ip
}

output "instance_id"{
    value = module.ec2.instance_id
}