provider "aws" {
  region = "us-east-1"
}

module "cloudfront-s3-website" {
  source                 = "../"
  hosted_zone            = "example.com"
  domain_name            = "test.abc.example.com"
  aws_region             = "us-east-1"
  acm_certificate_domain = "*.abc.example.com"
}