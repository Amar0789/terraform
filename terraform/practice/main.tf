resource "aws_instance" "practise"{
    ami = var.ami_id
    instance_type = var.environment == "prod"? "t3.micro" : "t3.small"
    vpc_security_group_ids = [aws_security_group.allow.id]

    tags = {
        Name = "new"
    }
    provisioner "local-exec"{
        command = "echo 'hi' > ile.txt"
    }

    connection {
        user = "ec2-user"
        type = "ssh"
        password = "DEvOps321"
        host = self.public_ip
    }

    provisioner "remote-exec"{
       inline = [

        "sudo dnf install nginx -y",
        "sudo systemctl start nginx",

        ]
    }
}

resource "aws_security_group" "allow"{
    name = "something"
    description = "somethings"

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_All"
    }
}