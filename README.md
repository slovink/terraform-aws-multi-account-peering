
<<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AWS   Multi-account-peering
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create multi-account-peering resource on AWS.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.7.0-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-aws-multi-account-peering/blob/master/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>



</p>
<p align="center">

<a href='https://www.facebook.com/Slovink.in=https://github.com/slovink/terraform-aws-multi-account-peering'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/company/101534993/admin/feed/posts/=https://github.com/slovink/terraform-aws-multi-account-peering'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>



- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Prerequisites

This module has a few dependencies:

- [Terraform 1.x.x](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)

## Examples
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/slovink/terraform-aws-multi-account-peering/tree/master/_example) directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/slovink/terraform-aws-multi-account-peering/blob/master/LICENSE) file for more details.



# Example: default
  ```hcl
    module "vpc-peering" {
      source = "../"

      name        = "vpc-peering"
      environment = "test"
      label_order = ["environment", "name"]

      enable_peering    = true
      accepter_role_arn = "arn:aws:iam::xxxxxxxxx:role/switch-role"
      accepter_region   = "us-east-1"
      requestor_vpc_id  = "vpc-xxxxxxxxxxxx"
      acceptor_vpc_id   = "vpc-xxxxxxxxxxxx"
    }
  ```

## Module Inputs

The following inputs can be configured when using this module:

- `name` (string): A name for the peering configuration.
- `environment` (string): The environment in which the peering connection is being created.
- `requestor_vpc_id` (string): The ID of the VPC that initiates the peering request.
- `acceptor_vpc_id` (string): The ID of the VPC that accepts the peering request.
- `label_order` (list of strings): The order in which labels should be applied to the peering connection.
- `accept_region` (string): The AWS region where the accepting VPC is located.
- `auto_accept` (bool): Whether to automatically accept the peering request (true/false).


## Module Outputs

This module provides no specific outputs.
- id - The ID of the VPC Peering Connection.
- accept_status - The status of the VPC Peering Connection request.
- tags - (Optional) A map of tags to assign to the resource.
<!-- END_TF_DOCS -->