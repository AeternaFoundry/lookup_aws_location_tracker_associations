variable "location_tracker_associations_lookup" {
  description = <<EOT
Map of location_tracker_associations_lookup, attributes below
Required:
    - tracker_name
Optional:
    - region
EOT

  type = map(object({
    tracker_name = string
    region       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.location_tracker_associations_lookup : (
        length(v.tracker_name) >= 1 && length(v.tracker_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

