# Staging Infrastructure - Run #56
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_56" {
  byte_length = 8
}

output "run_number" {
  value = "56"
}

output "run_id_56" {
  value = random_id.run_56.hex
}
