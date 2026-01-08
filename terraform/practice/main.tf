resource "aws_vpc" "a"{
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
}

resource "aws_vpc" "b"{
    cidr_block = "10.1.0.0/16"
    enable_dns_hostnames = true
}

resource "aws_vpc_peering_connection" "pair"{
    vpc_id = aws_vpc.a.id
    peer_vpc_id = aws_vpc.b.id
    auto_accept = true
}