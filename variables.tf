variable "secrets" {
  description = "A list of secret names"
  type        = list(string)
}

variable "name" {
  description = "IAM policy name"
}

variable "description" {
  description = "IAM policy description"
  default     = "Readonly access to specific secret(s)"
}

variable "path" {
  description = "IAM policy path"
  default     = "/"
}
