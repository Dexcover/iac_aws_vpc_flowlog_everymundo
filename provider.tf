provider "aws" {
    region = "us-east-1"
    assume_role {
        role_arn        = "arn:aws:iam::${var.account_id}:role/delegate-admin-em-provisioner"
        session_name    = "devops-terraform"
        external_id     = "devops"
    }
}
