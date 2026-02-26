# Staging Infrastructure - Run #1
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_1" {
  byte_length = 8
}

output "run_number" {
  value = "1"
}

output "run_id_1" {
  value = random_id.run_1.hex
}
