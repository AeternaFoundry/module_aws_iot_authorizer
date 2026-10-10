output "iot_authorizers_id" {
  description = "Map of id values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_authorizers_arn" {
  description = "Map of arn values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_authorizers_authorizer_function_arn" {
  description = "Map of authorizer_function_arn values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.authorizer_function_arn if v.authorizer_function_arn != null && length(v.authorizer_function_arn) > 0 }
}
output "iot_authorizers_enable_caching_for_http" {
  description = "Map of enable_caching_for_http values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.enable_caching_for_http if v.enable_caching_for_http != null }
}
output "iot_authorizers_name" {
  description = "Map of name values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_authorizers_region" {
  description = "Map of region values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_authorizers_signing_disabled" {
  description = "Map of signing_disabled values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.signing_disabled if v.signing_disabled != null }
}
output "iot_authorizers_status" {
  description = "Map of status values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.status if v.status != null && length(v.status) > 0 }
}
output "iot_authorizers_tags" {
  description = "Map of tags values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_authorizers_tags_all" {
  description = "Map of tags_all values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iot_authorizers_token_key_name" {
  description = "Map of token_key_name values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.token_key_name if v.token_key_name != null && length(v.token_key_name) > 0 }
}
output "iot_authorizers_token_signing_public_keys" {
  description = "Map of token_signing_public_keys values across all iot_authorizers, keyed the same as var.iot_authorizers"
  value       = { for k, v in aws_iot_authorizer.iot_authorizers : k => v.token_signing_public_keys if v.token_signing_public_keys != null && length(v.token_signing_public_keys) > 0 }
  sensitive   = true
}

