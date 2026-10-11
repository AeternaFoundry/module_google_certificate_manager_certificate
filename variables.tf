variable "certificate_manager_certificates" {
  description = <<EOT
Map of certificate_manager_certificates, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - description
    - labels
    - location
    - project
    - scope
    - managed (block):
        - dns_authorizations (optional)
        - domains (optional)
        - issuance_config (optional)
    - self_managed (block):
        - certificate_pem (optional)
        - pem_certificate (optional)
        - pem_private_key (optional)
        - pem_private_key_wo (optional)
        - pem_private_key_wo_version (optional)
        - private_key_pem (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    location        = optional(string)
    project         = optional(string)
    scope           = optional(string)
    managed = optional(object({
      dns_authorizations = optional(list(string))
      domains            = optional(list(string))
      issuance_config    = optional(string)
    }))
    self_managed = optional(object({
      certificate_pem            = optional(string)
      pem_certificate            = optional(string)
      pem_private_key            = optional(string)
      pem_private_key_wo         = optional(string)
      pem_private_key_wo_version = optional(string)
      private_key_pem            = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

