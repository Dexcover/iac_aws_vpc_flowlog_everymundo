include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-252750970567"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-south-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-252750970567"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0cbdda285a97a890c"]
    region                                 = "eu-south-1"
}
