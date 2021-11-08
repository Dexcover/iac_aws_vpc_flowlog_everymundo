include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-397307568928"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-central-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-397307568928"
    }
}

inputs = {
    vpc_ids                                = ["vpc-6c8a4606", "vpc-090e540db06f811f1"]
    region                                 = "eu-central-1"
}
