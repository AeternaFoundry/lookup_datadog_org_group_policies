variable "org_group_policies_lookup" {
  description = <<EOT
Map of org_group_policies_lookup, attributes below
Required:
    - org_group_id
Optional:
    - policy_name
EOT

  type = map(object({
    org_group_id = string
    policy_name  = optional(string)
  }))
}

