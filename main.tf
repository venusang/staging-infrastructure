# Staging Infrastructure - Run #57
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_57" {
  byte_length = 8
}

output "run_number" {
  value = "57"
}

output "run_id_57" {
  value = random_id.run_57.hex
}
