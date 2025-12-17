resource "aws_instance" "tf"{
    ami = var.ami
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.aws.id]

    tags = {
        Name = "one"
    
    }

    connection {
        user = "ec2-user"
        type = "ssh"
        host = self.public_ip
        private_key = file("${C:/Amar/devops/daws-81s}/keys")
    }

    provisioner "remote-exec"{
        inline = [
            "sudo dnf install tree -y",
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx",
        ]
    }

    provisioner "remote-exec"{
        when = destroy
        inline = [
            "sudo dnf remove tree -y",
            "sudo dnf remove nginx -y",
        ]
    }



}

resource "aws_security_group" "aws"{

    egress {
        from_port = 0
        to_port = 0
        protocol ="-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "something"
    }

}