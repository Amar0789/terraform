resource "aws_instance" "tf"{
    ami = var.ami
    instance_type = var.insatnce_type
    vpc_security_group_ids = [aws_security_group.aws.id]

    tags = {
        Name = Modul_demo
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