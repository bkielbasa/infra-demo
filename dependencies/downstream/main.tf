terraform {
  required_version = ">= 1.5.0"
}

variable "bucket_name" {
  type        = string
  description = "Mapped from the upstream output bucket_name."
}

resource "terraform_data" "consumer" {
  input = var.bucket_name
}

output "bucket_name" {
  value = terraform_data.consumer.output
}
