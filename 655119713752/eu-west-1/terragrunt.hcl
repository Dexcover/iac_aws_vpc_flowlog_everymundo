include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-655119713752"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-west-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-655119713752"
    }
}

inputs = {
    vpc_ids                                = ["vpc-9aafa2f1", "vpc-4b285c2f"]
    region                                 = "eu-west-1"
}
