variable "transcribe_language_models" {
  description = <<EOT
Map of transcribe_language_models, attributes below
Required:
    - base_model_name
    - language_code
    - model_name
    - input_data_config (block):
        - data_access_role_arn (required)
        - s3_uri (required)
        - tuning_data_s3_uri (optional)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    base_model_name = string
    language_code   = string
    model_name      = string
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    input_data_config = object({
      data_access_role_arn = string
      s3_uri               = string
      tuning_data_s3_uri   = optional(string)
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

