terraform {
  required_version = "1.16.6"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  filename             = "terraform-created-by-terraform.txt"
  content              = "Hello from Terraform practice - version 2"
  file_permission      = "0600"
  directory_permission = "0700"
}