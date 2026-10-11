resource "aws_transcribe_language_model" "transcribe_language_models" {
  for_each = var.transcribe_language_models

  base_model_name = each.value.base_model_name
  language_code   = each.value.language_code
  model_name      = each.value.model_name
  region          = each.value.region
  tags            = each.value.tags
  tags_all        = each.value.tags_all

  input_data_config {
    data_access_role_arn = each.value.input_data_config.data_access_role_arn
    s3_uri               = each.value.input_data_config.s3_uri
    tuning_data_s3_uri   = each.value.input_data_config.tuning_data_s3_uri
  }
}

