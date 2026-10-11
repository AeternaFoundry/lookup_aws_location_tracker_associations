data "aws_location_tracker_associations" "location_tracker_associations_lookup" {
  for_each = var.location_tracker_associations_lookup

  tracker_name = each.value.tracker_name
  region       = each.value.region
}

