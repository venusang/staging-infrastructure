# Staging Infrastructure - Run #4
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_4" {
  byte_length = 8
}

output "run_number" {
  value = "4"
}

output "run_id_4" {
  value = random_id.run_4.hex
}
