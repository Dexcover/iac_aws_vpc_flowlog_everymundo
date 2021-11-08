include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-267988872525"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-west-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-267988872525"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0ce2946a"]
    region                                 = "eu-west-1"
}
