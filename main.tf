# Staging Infrastructure - Run #64
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_64" {
  byte_length = 8
}

output "run_number" {
  value = "64"
}

output "run_id_64" {
  value = random_id.run_64.hex
}
