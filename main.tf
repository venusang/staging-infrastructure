# Staging Infrastructure - Run #36
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_36" {
  byte_length = 8
}

output "run_number" {
  value = "36"
}

output "run_id_36" {
  value = random_id.run_36.hex
}
