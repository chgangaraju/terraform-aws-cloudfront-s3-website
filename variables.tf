variable "domain_name" {}
variable "aws_region" {}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "hosted_zone" {
  default     = null
  description = "Route53 hosted zone"
}

variable "acm_certificate_domain" {
  default = null
}

variable "price_class" {
  default = "PriceClass_100" // Only US,Canada,Europe
}

variable "use_default_domain" {
  default     = false
  description = "Use S3 website address without Route53 and ACM certificate"
}

variable "upload_sample_file" {
  default     = false
  description = "Upload sample html file to s3 bucket"
}
