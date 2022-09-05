provider "aws" {
  region = "us-east-1"
}

module "cloudfront_s3_website_with_domain" {
  source                 = "../"
  hosted_zone            = "example.com"
  domain_name            = "test.abc.example.com"
  acm_certificate_domain = "*.abc.example.com"
  use_default_domain     = false
  upload_sample_file     = true
  tags                   = var.tags

  cloudfront_min_ttl     = 10
  cloudfront_default_ttl = 1400
  cloudfront_max_ttl     = 86400
}

module "cloudfront_s3_website_without_domain" {
  source             = "../"
  domain_name        = "test-application-1232" // Any random identifier for s3 bucket name
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

output "mod1_domain" {
  value = module.cloudfront_s3_website_with_domain.website_address
}

output "mod2_domain" {
  value = module.cloudfront_s3_website_without_domain.cloudfront_domain_name
}
