# Staging Infrastructure - Run #95
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_95" {
  byte_length = 8
}

output "run_number" {
  value = "95"
}

output "run_id_95" {
  value = random_id.run_95.hex
}
