output "cloudfront_dist_id" {
  value = "${aws_cloudfront_distribution.s3_distribution.id}"
}

output "website_address" {
  value = "${var.domain_name}"
}
