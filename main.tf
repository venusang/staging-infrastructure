# Staging Infrastructure - Run #14
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_14" {
  byte_length = 8
}

output "run_number" {
  value = "14"
}

output "run_id_14" {
  value = random_id.run_14.hex
}
