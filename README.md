# HCP Vault: KV v2 Secrets Backend

This Terraform Module provisions a [Key-Value (v2) Secrets Backend](https://www.vaultproject.io/docs/secrets/kv/kv-v2) for HashiCorp Cloud Platform (HCP) Vault.

## Table of Contents

- [HCP Vault: KV v2 Secrets Backend](#hcp-vault-kv-v2-secrets-backend)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

* HashiCorp Cloud Platform (HCP) [Account](https://portal.cloud.hashicorp.com/sign-in)
* HashiCorp Cloud Platform [Vault](https://cloud.hashicorp.com/products/vault)
* Terraform `1.2.x` or newer.

This module requires an actively provisioned [HCP Vault](https://cloud.hashicorp.com/products/vault). For recommendations on how to deploy this cluster and the associated HashiCorp Virtual Network (HVN), see [this module](https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/latest).

## Usage

> **Warning**
> Interacting with Vault from Terraform causes any secrets that you read and write to be persisted in both Terraform's state file and in any generated plan files.
> For any Terraform module that reads or writes Vault secrets, these files should be treated as sensitive and protected accordingly.

For examples, see the [./examples](https://github.com/ksatirli/terraform-hcp-vault-kv-v2/tree/main/examples/) directory.

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-hcp-vault-kv-v2/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
