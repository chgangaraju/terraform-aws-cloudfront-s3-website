# terraform-aws-cloudfront-s3-website
Terraform module for creating a s3 static website with cloudfront distribution

The following resources will be created
  
  - S3 Bucket
  - CloudFront distribution
  - Route53 record
  - Upload sample html file (optional)
  
Prerequisites (Optional in example2):

  - Route 53 hosted zone for example.com
  - ACM certificate for *.example.com in us-east-1 region
  
### Example 1

    provider "aws" {
      region = "us-east-1"
    }

    module "cloudfront_s3_website_with_domain" {
        source                 = "chgangaraju/cloudfront-s3-website/aws"
        version                = "1.2.0"
        hosted_zone            = "example.com" 
        domain_name            = "test.abc.example.com"
        aws_region             = "us-east-1"
        acm_certificate_domain = "*.abc.example.com"
        upload_sample_file     = true
    }

### Example 2

    module "cloudfront_s3_website_without_domain" {
        source                 = "chgangaraju/cloudfront-s3-website/aws"
        version                = "1.2.0"
        domain_name            = "test.abc.example.com"
        aws_region             = "us-east-1"
        use_default_domain     = true
        upload_sample_file     = true
    }
    
