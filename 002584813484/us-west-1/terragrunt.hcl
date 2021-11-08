include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-002584813484"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/us-west-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-002584813484"
    }
}

inputs = {
    vpc_ids                                = ["vpc-47715d22", "vpc-6c715d09"]
    region                                 = "us-west-1"
}