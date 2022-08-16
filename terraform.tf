terraform {
  # see https://www.terraform.io/docs/language/settings/index.html#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/hcp/0.40.0
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.40.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/vault/3.8.2
    vault = {
      source  = "hashicorp/vault"
      version = "3.8.2"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-a-required-terraform-version
  required_version = ">= 1.2.0"
}
