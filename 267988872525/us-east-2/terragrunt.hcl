include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-267988872525"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/us-east-2/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-267988872525"
    }
}

inputs = {
    vpc_ids                                = ["vpc-7b8ccf13"]
    region                                 = "us-east-2"
}
