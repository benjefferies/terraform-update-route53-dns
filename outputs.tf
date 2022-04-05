output "ip_address" {
  value       = aws_route53_record.a_record.records
  description = "The IP address that has been set for the A record."
}

output "domain" {
  value       = aws_route53_record.a_record.name
  description = "The domain that has been set for the A record."
}
