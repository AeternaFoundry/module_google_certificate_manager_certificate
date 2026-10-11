output "certificate_manager_certificates_id" {
  description = "Map of id values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no id are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "certificate_manager_certificates_deletion_policy" {
  description = "Map of deletion_policy values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "certificate_manager_certificates_description" {
  description = "Map of description values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no description are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "certificate_manager_certificates_effective_labels" {
  description = "Map of effective_labels values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no effective_labels are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "certificate_manager_certificates_labels" {
  description = "Map of labels values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no labels are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "certificate_manager_certificates_location" {
  description = "Map of location values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no location are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "certificate_manager_certificates_managed" {
  description = "Map of managed values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no managed are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => one(v.managed) if v.managed != null && length(v.managed) > 0 }
}
output "certificate_manager_certificates_name" {
  description = "Map of name values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no name are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "certificate_manager_certificates_project" {
  description = "Map of project values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no project are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "certificate_manager_certificates_san_dnsnames" {
  description = "Map of san_dnsnames values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no san_dnsnames are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.san_dnsnames if v.san_dnsnames != null && length(v.san_dnsnames) > 0 }
}
output "certificate_manager_certificates_scope" {
  description = "Map of scope values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no scope are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "certificate_manager_certificates_self_managed" {
  description = "Map of self_managed values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no self_managed are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => one(v.self_managed) if v.self_managed != null && length(v.self_managed) > 0 }
  sensitive   = true
}
output "certificate_manager_certificates_terraform_labels" {
  description = "Map of terraform_labels values across all certificate_manager_certificates, keyed the same as var.certificate_manager_certificates except keys with no terraform_labels are omitted"
  value       = { for k, v in google_certificate_manager_certificate.certificate_manager_certificates : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

