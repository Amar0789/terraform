variable "ami_id"{
    
}

variable "instance_type"{
    default = "t3.micro"
    validation {
        condition = contains(["t3.small" , "t3.micro"], var.instance_type)
        error_message = "Please select only t3.small or t3.micro"
    }
}