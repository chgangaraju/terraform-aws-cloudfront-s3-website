output "cloudfront_domain_name" {
  value = (var.use_default_domain == true) ? aws_cloudfront_distribution.s3_distribution_with_default_domain[0].domain_name : aws_cloudfront_distribution.s3_distribution[0].domain_name
}

output "cloudfront_dist_id" {
  value = (var.use_default_domain == true) ? aws_cloudfront_distribution.s3_distribution_with_default_domain[0].id : aws_cloudfront_distribution.s3_distribution[0].id
}

output "s3_domain_name" {
  value = aws_s3_bucket.s3_bucket.website_domain
}

output "website_address" {
  value = var.domain_name
}
