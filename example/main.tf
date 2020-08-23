provider "aws" {
  region = "us-east-1"
}

module "cloudfront_s3_website_with_domain" {
  source                 = "../"
  hosted_zone            = "example.com"
  domain_name            = "test.abc.example.com"
  aws_region             = "us-east-1"
  acm_certificate_domain = "*.abc.example.com"
  use_default_domain     = false
  upload_sample_file     = true
  tags                   = var.tags
}


module "cloudfront_s3_website_without_domain" {
  source             = "../"
  domain_name        = "test.abc.example.com"
  aws_region         = "us-east-1"
  use_default_domain = true
  upload_sample_file = true
  tags               = var.tags
}

variable "tags" {
  default = {
    owner       = "Gangaraju"
    application = "sample"
  }
}
