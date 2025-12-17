locals {
    instance_type = var.instance_type == "prod"? "t3.micro" : "t3.small"
}