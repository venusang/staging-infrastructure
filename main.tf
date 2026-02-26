# Staging Infrastructure - Run #96
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_96" {
  byte_length = 8
}

output "run_number" {
  value = "96"
}

output "run_id_96" {
  value = random_id.run_96.hex
}
