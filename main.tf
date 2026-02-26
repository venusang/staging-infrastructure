# Staging Infrastructure - Run #23
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_23" {
  byte_length = 8
}

output "run_number" {
  value = "23"
}

output "run_id_23" {
  value = random_id.run_23.hex
}
