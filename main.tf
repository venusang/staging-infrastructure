# Staging Infrastructure - Run #79
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_79" {
  byte_length = 8
}

output "run_number" {
  value = "79"
}

output "run_id_79" {
  value = random_id.run_79.hex
}
