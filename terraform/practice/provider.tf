terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.66.0"
        }
    }

/*     backend "s3" { 
        bucket = "myapp789bucket"
        key = "one"
        region = "us-east-1"
        dynamodb_table = "testing"
        encrypt = true
    }
 */
}

provider "aws" {
    region = "us-east-01"
}
