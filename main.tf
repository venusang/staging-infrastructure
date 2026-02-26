# Staging Infrastructure - Run #26
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_26" {
  byte_length = 8
}

output "run_number" {
  value = "26"
}

output "run_id_26" {
  value = random_id.run_26.hex
}
