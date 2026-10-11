resource "oci_identity_dynamic_group" "identity_dynamic_groups" {
  for_each = var.identity_dynamic_groups

  compartment_id = each.value.compartment_id
  description    = each.value.description
  matching_rule  = each.value.matching_rule
  name           = each.value.name
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

