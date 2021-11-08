include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-267988872525"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-north-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-267988872525"
    }
}

inputs = {
    vpc_ids                                = ["vpc-4d9c7224"]
    region                                 = "eu-north-1"
}
