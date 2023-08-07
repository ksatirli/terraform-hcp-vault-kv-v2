# Vault: KV v2 Secrets Backend

This Terraform Module provisions a [Key-Value (v2) Secrets Backend](https://developer.hashicorp.com/vault/docs/secrets/kv/kv-v2) for HashiCorp Vault.

## Table of Contents

<!-- TOC -->
* [Vault: KV v2 Secrets Backend](#vault--kv-v2-secrets-backend)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Requirements

* HashiCorp Vault
* Terraform `1.3.0` or newer.

## Usage

> **Warning**
> Interacting with Vault from Terraform causes any secrets that you read and write to be persisted in both Terraform's state file and in any generated plan files.
>
> For any Terraform module that reads or writes Vault secrets, these files should be treated as sensitive and protected accordingly.

For examples, see the [./examples](https://github.com/ksatirli/terraform-vault-kv-v2/tree/main/examples/) directory.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cas_required | Toggle to require the _check-and-set_ (CAS) parameter to be set on all write requests. | `bool` | `true` | no |
| delete_version_after | If set, specifies the length of time before a version is deleted. | `string` | `null` | no |
| max_versions | The number of versions to keep per key. | `number` | `5` | no |
| mount_description | Human-friendly description of the mount. | `string` | `"Terraform-managed KV (v2) Secret Backend."` | no |
| mount_path | Where the secret backend will be mounted. | `string` | `"kv"` | no |

### Outputs

| Name | Description |
|------|-------------|
| vault_kv_secret_backend_v2 | Exported Attributes for `vault_kv_secret_backend_v2`. |
| vault_mount | Exported Attributes for `vault_mount`. |
<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-vault-kv-v2/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
