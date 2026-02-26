# Staging Infrastructure - Run #25
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_25" {
  byte_length = 8
}

output "run_number" {
  value = "25"
}

output "run_id_25" {
  value = random_id.run_25.hex
}
