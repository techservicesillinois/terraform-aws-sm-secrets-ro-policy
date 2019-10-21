# sm-secrets-ro-policy

[![Build Status](https://drone.techservices.illinois.edu/api/badges/techservicesillinois/terraform-aws-sm-secrets-ro-policy/status.svg)](https://drone.techservices.illinois.edu/techservicesillinois/terraform-aws-sm-secrets-ro-policy)

Provides an IAM policy that allows read access to a specified set
of Secret Manager secrets.

Argument Reference
-----------------

The following arguments are supported:

* `name` - (Required) The name of the IAM policy to create

* `secrets` - (Required) A list of secret names to allow access to

* `description` - The IAM policy description

* `path` - The IAM policy path (default "/")

Attributes Reference
--------------------

The following attributes are exported:

* `arn` - The Amazon Resource Name (ARN) that identifies the policy
