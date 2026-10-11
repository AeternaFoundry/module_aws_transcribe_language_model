output "transcribe_language_models_id" {
  description = "Map of id values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transcribe_language_models_arn" {
  description = "Map of arn values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "transcribe_language_models_base_model_name" {
  description = "Map of base_model_name values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.base_model_name if v.base_model_name != null && length(v.base_model_name) > 0 }
}
output "transcribe_language_models_input_data_config" {
  description = "Map of input_data_config values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => one(v.input_data_config) if v.input_data_config != null && length(v.input_data_config) > 0 }
}
output "transcribe_language_models_language_code" {
  description = "Map of language_code values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "transcribe_language_models_model_name" {
  description = "Map of model_name values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.model_name if v.model_name != null && length(v.model_name) > 0 }
}
output "transcribe_language_models_region" {
  description = "Map of region values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transcribe_language_models_tags" {
  description = "Map of tags values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "transcribe_language_models_tags_all" {
  description = "Map of tags_all values across all transcribe_language_models, keyed the same as var.transcribe_language_models"
  value       = { for k, v in aws_transcribe_language_model.transcribe_language_models : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

