# Staging Infrastructure - Run #5
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_5" {
  byte_length = 8
}

output "run_number" {
  value = "5"
}

output "run_id_5" {
  value = random_id.run_5.hex
}
