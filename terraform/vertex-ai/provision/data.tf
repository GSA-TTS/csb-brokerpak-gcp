locals {
  # project is always provided via computed_input from gcp.project config.
  resolved_project = var.project
  ttl_expires_at   = timeadd(timestamp(), "${var.ttl_hours}h")

  common_labels = merge(var.labels, {
    ttlexpiry   = replace(local.ttl_expires_at, ":", "-")
    managed-by  = "cloud-service-broker"
    environment = "sandbox"
  })
}
