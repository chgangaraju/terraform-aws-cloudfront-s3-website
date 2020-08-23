output "cloudfront_dist_id" {
  value = aws_cloudfront_distribution.s3_distribution[0].id
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.s3_distribution[0].domain_name
}

output "s3_domain_name" {
  value = aws_s3_bucket.s3_bucket.website_domain
}

output "website_address" {
  value = var.domain_name
}
