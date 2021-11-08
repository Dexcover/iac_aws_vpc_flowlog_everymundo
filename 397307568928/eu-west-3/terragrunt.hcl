include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-397307568928"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-west-3/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-397307568928"
    }
}

inputs = {
    vpc_ids                                = ["vpc-18feeb71"]
    region                                 = "eu-west-3"
}
