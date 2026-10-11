resource "google_certificate_manager_certificate" "certificate_manager_certificates" {
  for_each = var.certificate_manager_certificates

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  location        = each.value.location
  project         = each.value.project
  scope           = each.value.scope

  dynamic "managed" {
    for_each = each.value.managed != null ? [each.value.managed] : []
    content {
      dns_authorizations = managed.value.dns_authorizations
      domains            = managed.value.domains
      issuance_config    = managed.value.issuance_config
    }
  }

  dynamic "self_managed" {
    for_each = each.value.self_managed != null ? [each.value.self_managed] : []
    content {
      certificate_pem            = self_managed.value.certificate_pem
      pem_certificate            = self_managed.value.pem_certificate
      pem_private_key            = self_managed.value.pem_private_key
      pem_private_key_wo         = self_managed.value.pem_private_key_wo
      pem_private_key_wo_version = self_managed.value.pem_private_key_wo_version
      private_key_pem            = self_managed.value.private_key_pem
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

