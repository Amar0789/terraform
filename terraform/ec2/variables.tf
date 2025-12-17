variable "ami"{
    default = "ami-09c813fb71547fc4f"
}

variable "instances"{
    default = ["mysql","backend","frontend"]
}

variable "domain_name" {
    default = "app789.site"
}
variable "zone_id"{
    default = "Z01736442JTWOVOV6NKL6"
}