include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-694969784752"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/us-weast-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-694969784752"
    }
}

inputs = {
    vpc_ids                                = ["vpc-4cc72e2a"]
    region                                 = "us-weast-1"
}
