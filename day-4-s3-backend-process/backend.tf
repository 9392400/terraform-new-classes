terraform {
    backend "s3" {
        bucket = "terraforms3oipg"
        region = "ap-south-1"
        key    = "terraform.tfstate"
        dynamodb_table = "terraform-state-lock"
        encrypt = true
    }

}