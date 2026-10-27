terraform {
  required_version = ">= 1.5.0"
}

variable "message" {
  type        = string
  description = "Provided by the context entry TF_VAR_message."
}

resource "terraform_data" "message" {
  input = var.message
}

output "message" {
  value = terraform_data.message.output
}
