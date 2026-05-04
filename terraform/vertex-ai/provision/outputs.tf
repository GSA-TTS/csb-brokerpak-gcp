output "project_id" {
  value = local.resolved_project
}

output "region" {
  value = var.region
}

output "service_account_email" {
  value = google_service_account.vertex_ai.email
}

output "service_account_id" {
  value = google_service_account.vertex_ai.id
}

output "bucket_name" {
  value = google_storage_bucket.ml_artifacts.name
}

output "api_endpoint" {
  value = "${var.region}-aiplatform.googleapis.com"
}

output "available_models" {
  value = var.models
}

output "ttl_expires_at" {
  value = local.ttl_expires_at
}
