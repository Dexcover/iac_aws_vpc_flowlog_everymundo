include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-002584813484"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/af-south-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-002584813484"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0df5e3b6a3b0f566b"]
    region                                 = "af-south-1"
}
