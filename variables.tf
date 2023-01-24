variable "vault_addr" {
  type        = string
  description = "The Address of the (HCP) Vault cluster."
}

variable "mount_description" {
  type        = string
  description = "Human-friendly description of the mount."
  default     = "Terraform-managed KV (v2) Secret Backend."
}

variable "mount_namespace" {
  type        = string
  description = "The namespace to provision the Secret Backend in. This is always relative to the provider's configured namespace (`admin`)."
  default     = null
}

variable "mount_path" {
  type        = string
  description = "Where the secret backend will be mounted."
  default     = "kv"
}

variable "max_versions" {
  type        = number
  description = "The number of versions to keep per key."
  default     = 5
}

variable "cas_required" {
  type        = bool
  description = "Toggle to require the _check-and-set_ (CAS) parameter to be set on all write requests."
  default     = true
}

variable "delete_version_after" {
  type        = string
  description = "If set, specifies the length of time before a version is deleted."
  default     = null
}
