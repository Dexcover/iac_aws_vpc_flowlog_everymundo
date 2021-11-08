include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-694969784752"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/ap-southeast-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-694969784752"
    }
}

inputs = {
    vpc_ids                                = ["vpc-1b75697c"]
    region                                 = "ap-southeast-1"
}
