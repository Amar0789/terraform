resource "aws_route53_record" "r53"{
    count = length(var.instances)
    type = "A"
    ttl =1
    name = "${var.instances[count.index]}.${var.domain_name}"
    records = "${aws_instsnce.aws[count.index].private_ip}"
    allow_overwrite = true
}