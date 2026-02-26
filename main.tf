# Staging Infrastructure - Run #6
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_6" {
  byte_length = 8
}

output "run_number" {
  value = "6"
}

output "run_id_6" {
  value = random_id.run_6.hex
}
