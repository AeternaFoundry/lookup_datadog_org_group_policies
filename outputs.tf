output "org_group_policies_lookup_id" {
  description = "Map of id values across all org_group_policies_lookup, keyed the same as var.org_group_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_org_group_policies.org_group_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "org_group_policies_lookup_org_group_id" {
  description = "Map of org_group_id values across all org_group_policies_lookup, keyed the same as var.org_group_policies_lookup except keys with no org_group_id are omitted"
  value       = { for k, v in data.datadog_org_group_policies.org_group_policies_lookup : k => v.org_group_id if v.org_group_id != null && length(v.org_group_id) > 0 }
}
output "org_group_policies_lookup_policies" {
  description = "Map of policies values across all org_group_policies_lookup, keyed the same as var.org_group_policies_lookup except keys with no policies are omitted"
  value       = { for k, v in data.datadog_org_group_policies.org_group_policies_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "org_group_policies_lookup_policy_name" {
  description = "Map of policy_name values across all org_group_policies_lookup, keyed the same as var.org_group_policies_lookup except keys with no policy_name are omitted"
  value       = { for k, v in data.datadog_org_group_policies.org_group_policies_lookup : k => v.policy_name if v.policy_name != null && length(v.policy_name) > 0 }
}

