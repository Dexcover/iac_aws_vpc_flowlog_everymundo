include {
    path = find_in_parent_folders()
}

remote_state {
    backend = "s3"
    config = {
        bucket          = "em-iac-tfstate-397307568928"
        region          = "us-west-2"
        key             = "em/iac/vpc-flow/ap-southeast-1/terraform.tfstate"
        encrypt         = true
        dynamodb_table  = "em-iac-tfstate-397307568928"
    }
}

inputs = {
    vpc_ids                                = ["vpc-53bcaa34", "vpc-04079121f4af4b8ac"]
    region                                 = "ap-southeast-1"
}
