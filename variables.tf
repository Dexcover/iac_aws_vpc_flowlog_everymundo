variable "account_id" {
  description = "AWS Account"
  type        = string
  default     = ""
}

variable "region_main" {
  description = "AWS Region where AWS config is"
  type        = string
  default     = ""
}

variable "vpc_ids" {
  type = list(string)
  default = []
  description = "vpc_ids"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "aws_arn_config_role" {
  description = "AWS config-role arn at main account"
  type        = string
  default     = "arn:aws:iam::002584813484:role/config-role"
}

variable "main_bucket" {
  description = "main bucket where logs are"
  type        = string
  default     = "config-bucket-002584813484"
}

variable "all_supported" {
  type        = bool
  default     = false
  description = "description"
}

variable "include_global_resource_types" {
  type        = bool
  default     = false
  description = "description"
}

variable "resource_types" {
  type = list(string)
  default = []
  description = "description"
}

variable "enable_recorder" {
  type        = bool
  default     = false
  description = "description"
}

variable "create_auth" {
  description = "Whether to create the aws_config_aggregate_authorization"
  type        = bool
  default     = true
}

variable "create_agg" {
  description = "Whether to create the Aggregator"
  type        = bool
  default     = false
}

variable "agg_account_ids" {
  type = list(string)
  default = []
  description = "description"
}



variable "rules" {
  default = [
    "ec2-ebs-encryption-by-default",
    "vpc-flow-logs-enabled",
    "restricted-ssh",
    "vpc-sg-open-only-to-authorized-ports"
  ]
  description = "The list of rules to enable in AWS Config. The names are identical to the ones used by AWS. These are used to name the rules and to refence into the input_parameters and source_idenitifers maps. The default is the minimum recommended list."
  type        = list(string)
}

variable "input_parameters" {
  default = {
    iam-password-policy = <<PARAMS
{
  "RequireUppercaseCharacters": "true",
  "RequireLowercaseCharacters": "true",
  "RequireSymbols": "true",
  "RequireNumbers": "true",
  "MinimumPasswordLength": "30",
  "PasswordReusePrevention": "24",
  "MaxPasswordAge": "30"
}
PARAMS

  }
  description = "A map of strings in JSON format that is passed to the AWS Config rule Lambda function. The map is keyed by the rule names. This is merged with a map contained in locals, with the values supplied here overriding any default values."
  type        = map(string)
}
