terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# GOOGLE_APPLICATION_CREDENTIALS is written by the GCP cloud integration.
provider "google" {
  project = var.project_id
}

variable "project_id" {
  type        = string
  description = "Set with a context entry TF_VAR_project_id."
}

resource "random_id" "suffix" {
  byte_length = 2
}

resource "google_storage_bucket" "demo" {
  name                        = "infra-demo-${random_id.suffix.hex}"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true
}
