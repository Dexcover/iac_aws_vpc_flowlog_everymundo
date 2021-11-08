include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-252750970567"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/me-south-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-252750970567"
    }
}

inputs = {
    vpc_ids                                = ["vpc-07f4450a4bd96deb4"]
    region                                 = "me-south-1"
}
