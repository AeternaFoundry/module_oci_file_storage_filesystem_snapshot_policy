output "file_storage_filesystem_snapshot_policies_id" {
  description = "Map of id values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no id are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_filesystem_snapshot_policies_availability_domain" {
  description = "Map of availability_domain values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no availability_domain are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "file_storage_filesystem_snapshot_policies_compartment_id" {
  description = "Map of compartment_id values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no compartment_id are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "file_storage_filesystem_snapshot_policies_defined_tags" {
  description = "Map of defined_tags values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no defined_tags are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "file_storage_filesystem_snapshot_policies_display_name" {
  description = "Map of display_name values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no display_name are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "file_storage_filesystem_snapshot_policies_freeform_tags" {
  description = "Map of freeform_tags values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "file_storage_filesystem_snapshot_policies_is_lock_override" {
  description = "Map of is_lock_override values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.is_lock_override if v.is_lock_override != null }
}
output "file_storage_filesystem_snapshot_policies_locks" {
  description = "Map of locks values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no locks are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "file_storage_filesystem_snapshot_policies_policy_prefix" {
  description = "Map of policy_prefix values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no policy_prefix are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.policy_prefix if v.policy_prefix != null && length(v.policy_prefix) > 0 }
}
output "file_storage_filesystem_snapshot_policies_schedules" {
  description = "Map of schedules values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no schedules are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "file_storage_filesystem_snapshot_policies_state" {
  description = "Map of state values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no state are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.state if v.state != null && length(v.state) > 0 }
}
output "file_storage_filesystem_snapshot_policies_system_tags" {
  description = "Map of system_tags values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no system_tags are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "file_storage_filesystem_snapshot_policies_time_created" {
  description = "Map of time_created values across all file_storage_filesystem_snapshot_policies, keyed the same as var.file_storage_filesystem_snapshot_policies except keys with no time_created are omitted"
  value       = { for k, v in oci_file_storage_filesystem_snapshot_policy.file_storage_filesystem_snapshot_policies : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

