include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-002584813484"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-central-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-002584813484"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0bed3744623c96326", "vpc-0f4fbc66"]
    region                                 = "eu-central-1"
}