# Staging Infrastructure - Run #83
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_83" {
  byte_length = 8
}

output "run_number" {
  value = "83"
}

output "run_id_83" {
  value = random_id.run_83.hex
}
