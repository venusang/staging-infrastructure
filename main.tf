# Staging Infrastructure - Run #69
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_69" {
  byte_length = 8
}

output "run_number" {
  value = "69"
}

output "run_id_69" {
  value = random_id.run_69.hex
}
