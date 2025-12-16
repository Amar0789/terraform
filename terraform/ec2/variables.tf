variable "ami"{
    default = "ami-09c813fb71547fc4f"
}

variable "instances"{
    default = ["mysql","backend","frontend"]
}