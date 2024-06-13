terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.49.0"
        }
    }
    backend "s3" {
        bucket = "sudheerdevops59"
        key    = "jenkins"
        region = "us-east-1"
        dynamodb_table = "daws-locking"
    }
}


#provide authentication here
provider "aws" {
    region = "us-east-1"
}