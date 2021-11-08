include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-208608947858"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/ca-central-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-208608947858"
    }
}

inputs = {
    vpc_ids                                = ["vpc-5655943e"]
    region                                 = "ca-central-1"
}
