locals {
    instance_type = var.instance_type == "prod"? "t3.micor" : "t3.small"
}