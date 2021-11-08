include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-819114787846"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-south-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-819114787846"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0ff978f3d39669270"]
    region                                 = "eu-south-1"
}
