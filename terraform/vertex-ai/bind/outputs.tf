output "credentials_json" {
  value     = base64decode(google_service_account_key.binding_key.private_key)
  sensitive = true
}

output "project_id" {
  value = var.project_id
}

output "region" {
  value = var.region
}

output "api_endpoint" {
  value = var.api_endpoint
}

output "models" {
  value = var.available_models
}

output "bucket_name" {
  value = var.bucket_name
}

output "ttl_expires_at" {
  value = var.ttl_expires_at
}
