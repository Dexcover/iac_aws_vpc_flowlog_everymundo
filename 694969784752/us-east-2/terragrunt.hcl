include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-694969784752"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/us-east-2/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-694969784752"
    }
}

inputs = {
    vpc_ids                                = ["vpc-d803d2b3", "vpc-0a639148317fab204"]
    region                                 = "us-east-2"
}
