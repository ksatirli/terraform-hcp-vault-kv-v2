# HCP Vault: KV v2 Secrets Backend

This Terraform Module provisions a [Key-Value (v2) Secrets Backend](https://www.vaultproject.io/docs/secrets/kv/kv-v2) for HashiCorp Cloud Platform (HCP) Vault.

## Table of Contents

<!-- TOC -->
* [HCP Vault: KV v2 Secrets Backend](#hcp-vault--kv-v2-secrets-backend)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Requirements

* HashiCorp Cloud Platform (HCP) [Account](https://portal.cloud.hashicorp.com/sign-in)
* HashiCorp Cloud Platform [Vault](https://cloud.hashicorp.com/products/vault)
* Terraform `1.2.x` or newer.

This module requires an actively provisioned [HCP Vault](https://cloud.hashicorp.com/products/vault). For recommendations on how to deploy this cluster and the associated HashiCorp Virtual Network (HVN), see [this module](https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/latest).

## Usage

> **Warning**
> Interacting with Vault from Terraform causes any secrets that you read and write to be persisted in both Terraform's state file and in any generated plan files.
>
> For any Terraform module that reads or writes Vault secrets, these files should be treated as sensitive and protected accordingly.

For examples, see the [./examples](https://github.com/ksatirli/terraform-hcp-vault-kv-v2/tree/main/examples/) directory.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vault_addr | The Address of the (HCP) Vault cluster. | `string` | n/a | yes |
| cas_required | Toggle to require the _check-and-set_ (CAS) parameter to be set on all write requests. | `bool` | `true` | no |
| delete_version_after | If set, specifies the length of time before a version is deleted. | `string` | `null` | no |
| max_versions | The number of versions to keep per key. | `number` | `5` | no |
| mount_description | Human-friendly description of the mount. | `string` | `"Terraform-managed KV (v2) Secret Backend."` | no |
| mount_namespace | The namespace to provision the Secret Backend in. This is always relative to the provider's configured namespace (`admin`). | `string` | `null` | no |
| mount_path | Where the secret backend will be mounted. | `string` | `"kv"` | no |

### Outputs

| Name | Description |
|------|-------------|
| secrets_engine_configuration_url | Secrets Engine configuration view URL. |
| secrets_engine_view_url | Secrets Engine main view URL. |
| vault_kv_secret_backend_v2 | Exported Attributes for `vault_kv_secret_backend_v2`. |
| vault_mount | Exported Attributes for `vault_mount`. |
| vault_ui_main_url | Vault Secrets Engines URL. |
<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-hcp-vault-kv-v2/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
