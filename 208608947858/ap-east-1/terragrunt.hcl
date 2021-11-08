include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-208608947858"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/ap-east-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-208608947858"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0ed980cd912f390d4"]
    region                                 = "ap-east-1"
}
