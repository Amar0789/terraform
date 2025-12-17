resource "aws_route53_record"{
    zone_id = var.zone_id
    type = "A"
    ttl = 1
    allow_overwrite = true
    name = "${var.instances[count.index].${var.domain_name}"
    records = [aws_instance.tf[count.index].private_ip]
}