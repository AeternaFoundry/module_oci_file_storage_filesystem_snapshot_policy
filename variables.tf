variable "file_storage_filesystem_snapshot_policies" {
  description = <<EOT
Map of file_storage_filesystem_snapshot_policies, attributes below
Required:
    - availability_domain
    - compartment_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - is_lock_override
    - policy_prefix
    - state
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - schedules (block):
        - day_of_month (optional)
        - day_of_week (optional)
        - hour_of_day (optional)
        - lock_duration_details (optional, block):
            - cool_off_duration (optional)
            - lock_duration (required)
            - lock_mode (required)
        - month (optional)
        - period (required)
        - retention_duration_in_seconds (optional)
        - schedule_prefix (optional)
        - time_schedule_start (optional)
        - time_zone (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain = string
    compartment_id      = string
    defined_tags        = optional(map(string))
    display_name        = optional(string)
    freeform_tags       = optional(map(string))
    is_lock_override    = optional(bool)
    policy_prefix       = optional(string)
    state               = optional(string)
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    schedules = optional(list(object({
      day_of_month = optional(number)
      day_of_week  = optional(string)
      hour_of_day  = optional(number)
      lock_duration_details = optional(object({
        cool_off_duration = optional(number)
        lock_duration     = number
        lock_mode         = string
      }))
      month                         = optional(string)
      period                        = string
      retention_duration_in_seconds = optional(string)
      schedule_prefix               = optional(string)
      time_schedule_start           = optional(string)
      time_zone                     = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.file_storage_filesystem_snapshot_policies : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

