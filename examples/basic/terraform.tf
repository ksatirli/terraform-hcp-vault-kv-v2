terraform {
  # see https://www.terraform.io/docs/language/settings/index.html#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/hcp/0.68.0
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.68.0, < 1.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/vault/3.19.0/
    vault = {
      source  = "hashicorp/vault"
      version = "3.19.0, < 4.0.0"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-a-required-terraform-version
  required_version = ">= 1.3.0"
}
