module "ec2" {
    source = "../ec2"
    ami = var.ami_id
    instance_type = var.instance_type

}