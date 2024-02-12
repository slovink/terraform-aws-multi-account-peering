#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}


variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}



#Module      : VPC PEERING
#Description : Terraform vpc peering module variables.
variable "accepter_region" {
  type        = string
  description = "The region of acceptor vpc."
}

variable "enable_peering" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating or accessing any resources."
}

variable "requestor_vpc_id" {
  type        = string
  description = "Requestor VPC ID."
}

variable "acceptor_vpc_id" {
  type        = string
  description = "Acceptor VPC ID."
}


variable "accepter_role_arn" {
  type        = string
  default     = ""
  description = "The Role ARN of accepter AWS account."
}
variable "profile_name" {
  type        = string
  default     = null
  description = "Name of aws profile."
}

variable "attributes" {
  type        = list(any)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "managedby" {
  type        = string
  default     = "hello@slovink.com"
  description = "ManagedBy, eg 'slovink'"
}

variable "repository" {
  type        = string
  default     = "https://github.com/slovink/terraform-aws-multi-account-peering"
  description = "Terraform current module repo"
}
