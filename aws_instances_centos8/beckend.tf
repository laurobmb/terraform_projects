terraform {
    backend "s3" {
        region = "us-east-1"
        profile = "default"
        bucket = "centosstate"
        encrypt = "true"
        key = "terraform.state"
    }
}