resource "aws_route53_record" "r53"{
    count = length(var.instances)
    zone_id = "Z09912121MS725XSKH1TG"
    type = "A"
    ttl =1
    name = "${var.instances[count.index]}.${var.domain_name}"
    records = [aws_instance.tf[count.index].private_ip]
    allow_overwrite = true
}