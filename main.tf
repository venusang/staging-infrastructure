# Staging Infrastructure - Run #88
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_88" {
  byte_length = 8
}

output "run_number" {
  value = "88"
}

output "run_id_88" {
  value = random_id.run_88.hex
}
