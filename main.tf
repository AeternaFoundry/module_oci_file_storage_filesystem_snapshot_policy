resource "oci_file_storage_filesystem_snapshot_policy" "file_storage_filesystem_snapshot_policies" {
  for_each = var.file_storage_filesystem_snapshot_policies

  availability_domain = each.value.availability_domain
  compartment_id      = each.value.compartment_id
  defined_tags        = each.value.defined_tags
  display_name        = each.value.display_name
  freeform_tags       = each.value.freeform_tags
  is_lock_override    = each.value.is_lock_override
  policy_prefix       = each.value.policy_prefix
  state               = each.value.state

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "schedules" {
    for_each = each.value.schedules != null ? each.value.schedules : []
    content {
      day_of_month = schedules.value.day_of_month
      day_of_week  = schedules.value.day_of_week
      hour_of_day  = schedules.value.hour_of_day
      dynamic "lock_duration_details" {
        for_each = schedules.value.lock_duration_details != null ? [schedules.value.lock_duration_details] : []
        content {
          cool_off_duration = lock_duration_details.value.cool_off_duration
          lock_duration     = lock_duration_details.value.lock_duration
          lock_mode         = lock_duration_details.value.lock_mode
        }
      }
      month                         = schedules.value.month
      period                        = schedules.value.period
      retention_duration_in_seconds = schedules.value.retention_duration_in_seconds
      schedule_prefix               = schedules.value.schedule_prefix
      time_schedule_start           = schedules.value.time_schedule_start
      time_zone                     = schedules.value.time_zone
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

