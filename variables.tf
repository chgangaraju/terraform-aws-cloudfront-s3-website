variable "domain_name" {}
variable "aws_region" {}

variable "tags" {
  type    = "map"
  default = {}
}

variable "hosted_zone" {}
