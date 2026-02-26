# Staging Infrastructure - Run #28
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_28" {
  byte_length = 8
}

output "run_number" {
  value = "28"
}

output "run_id_28" {
  value = random_id.run_28.hex
}
