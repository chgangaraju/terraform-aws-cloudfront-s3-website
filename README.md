# terraform-aws-cloudfront-s3-website
Terraform module for creating a s3 static website with cloudfront distribution

The following resources will be created
  
  - S3 Bucket
  - Cloudfront distribution
  - Route53 record
  
Prerequisites:

  - Route 53 hosted zone for example.com
  - ACM certificate for *.example.com in us-east-1 region
  
### Example 1

    provider "aws" {
      region = "us-east-1"
    }
     
    module "cloudfront-s3-website" {
        source           = "chgangaraju/cloudfront-s3-website/aws"
        version          = "1.0.0"
        hosted_zone      = "example.com"
        domain_name      = "test.example.com"
        aws_region       = "us-east-1"
    }