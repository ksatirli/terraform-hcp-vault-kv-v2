variable "hcp_vault_cluster_id" {
  type        = string
  description = "HCP Vault Cluster Identifier."
}

# this value is set in the `Vault` Variable Set, inside Terraform Cloud
# see https://app.terraform.io/app/workloads/settings/varsets/
variable "hcp_vault_token" {
  type        = string
  description = "The Token of the HCP Vault Cluster."
  sensitive   = true
}
