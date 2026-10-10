variable "iot_authorizers" {
  description = <<EOT
Map of iot_authorizers, attributes below
Required:
    - authorizer_function_arn
    - name
Optional:
    - enable_caching_for_http
    - region
    - signing_disabled
    - status
    - tags
    - tags_all
    - token_key_name
    - token_signing_public_keys
EOT

  type = map(object({
    authorizer_function_arn   = string
    name                      = string
    enable_caching_for_http   = optional(bool)
    region                    = optional(string)
    signing_disabled          = optional(bool)
    status                    = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    token_key_name            = optional(string)
    token_signing_public_keys = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_authorizers : (
        v.token_key_name == null || ((length(v.token_key_name) >= 1 && length(v.token_key_name) <= 128) && (can(regex("^[0-9A-Za-z_-]+", v.token_key_name))))
      )
    ])
    error_message = "all of: must be between 1 and 128 characters; must contain only alphanumeric characters, underscores, and hyphens"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

