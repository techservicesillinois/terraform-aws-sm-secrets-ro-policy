data "aws_secretsmanager_secret" "selected" {
  count = "${length(var.secrets)}"
  name  = "${var.secrets[count.index]}"
}

resource "aws_iam_policy" "default" {
  name        = "${var.name}"
  path        = "${var.path}"
  description = "${var.description}"

  policy = "${data.aws_iam_policy_document.default.json}"
}

data "aws_iam_policy_document" "default" {
  statement {
    actions = [
      "secretsmanager:GetSecretValue",
    ]

    resources = [
      "${data.aws_secretsmanager_secret.selected.*.arn}",
    ]
  }
}
