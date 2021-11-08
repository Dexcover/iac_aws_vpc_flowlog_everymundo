include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-655119713752"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/eu-central-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-655119713752"
    }
}

inputs = {
    vpc_ids                                = ["vpc-1bada472", "vpc-082362cf9c0227c90", "vpc-cb9d7aa2"]
    region                                 = "eu-central-1"
}