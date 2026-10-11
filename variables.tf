variable "identity_dynamic_groups" {
  description = <<EOT
Map of identity_dynamic_groups, attributes below
Required:
    - compartment_id
    - description
    - matching_rule
    - name
Optional:
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    description    = string
    matching_rule  = string
    name           = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

