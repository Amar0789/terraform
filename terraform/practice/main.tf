resource "aws_vpc" "main"{
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
}
resource "aws_internet_gateway" "main"{
    vpc_id = "aws_vpc.main.id"
}

resource "aws_subnet" "public"{
    vpc_id = "aws_vpc.main.id"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

}
resource "aws_lb" "main"{
    name = "app_alb"
    load_balancer_type = "application_load_balancer"
    internal = false
    subnets = [aws_subnet.public.id]

}