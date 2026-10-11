data "datadog_org_group_policies" "org_group_policies_lookup" {
  for_each = var.org_group_policies_lookup

  org_group_id = each.value.org_group_id
  policy_name  = each.value.policy_name
}

