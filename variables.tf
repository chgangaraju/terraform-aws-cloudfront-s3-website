variable "domain_name" {}
variable "aws_region" {}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "hosted_zone" {}

variable "acm_certificate_domain" {
  default = null
}