output "hcp_vault_cluster" {
  description = "Exported Attributes for `hcp_vault_cluster`."
  value       = data.hcp_vault_cluster.main
}

#locals {
#  base_url = "https://portal.cloud.hashicorp.com"
#  org_id   = hcp_hvn.main.organization_id
#  hvn_url  = "${local.base_url}/orgs/${local.org_id}/projects/${hcp_hvn.main.project_id}/hvns/${hcp_hvn.main.hvn_id}"
#}
#
#output "portal_hvn_overview_url" {
#  description = "HashiCorp Cloud Platform HVN Overview URL."
#  value       = local.hvn_url
#}
#
#output "portal_hvn_peering_url" {
#  description = "HashiCorp Cloud Platform HVN Peering URL."
#  value       = "${local.hvn_url}/peerings/${hcp_azure_peering_connection.main.peering_id}?product=consul&tab=terminal"
#}
#
#output "portal_hvn_route_table_url" {
#  description = "HashiCorp Cloud Platform HVN Route Table URL."
#  value       = "${local.hvn_url}/route-table"
#}
