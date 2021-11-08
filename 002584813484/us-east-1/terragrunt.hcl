include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-002584813484"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/us-east-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-002584813484"
    }
}

inputs = {
    vpc_ids                                = ["vpc-0e62d097d6c26e84f", "vpc-0de8796e022501bb7", "vpc-6ce12509", "vpc-0905b54182f20411e"] 
    region                                 = "us-east-1"
}