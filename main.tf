terraform {
  required_version = "1.16.6"

  required_providers {
    local = {
        source = "hashicorp/local"
        version = "2.5.3"
    }
    }
  }

provider "local" {}

resource "local_file" "hello" {
    filename = "terraform-created-by-terraform.txt"
    content  = "Hello from Terraform paractice"
}