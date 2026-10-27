terraform {
  required_version = ">= 1.5.0"
}

resource "terraform_data" "shared" {
  input = "infra-demo-shared"
}

output "bucket_name" {
  value = terraform_data.shared.output
}
