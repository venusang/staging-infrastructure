# Staging Infrastructure - Run #8
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_8" {
  byte_length = 8
}

output "run_number" {
  value = "8"
}

output "run_id_8" {
  value = random_id.run_8.hex
}
