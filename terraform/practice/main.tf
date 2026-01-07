module "ec2"{
    source = "../ec2"
    ami_id = var.ami
    instance_type = var.instance
}