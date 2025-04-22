# sm-secrets-ro-policy

[![Terraform actions status](https://github.com/techservicesillinois/terraform-aws-sm-secrets-ro-policy/workflows/terraform/badge.svg)](https://github.com/techservicesillinois/terraform-aws-sm-secrets-ro-policy/actions)

Provides an IAM policy that allows read access to a specified set
of Secret Manager secrets.

Argument Reference
-----------------

The following arguments are supported:

* `name` - (Required) The name of the IAM policy to create

* `secrets` - (Required) A list of secret names to allow access to

* `description` - The IAM policy description

* `path` - The IAM policy path (default "/")

* `tags` - Tags to be applied to resources where supported.

Attributes Reference
--------------------

The following attributes are exported:

* `arn` - The Amazon Resource Name (ARN) that identifies the policy
