# Staging Infrastructure - Run #22
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_22" {
  byte_length = 8
}

output "run_number" {
  value = "22"
}

output "run_id_22" {
  value = random_id.run_22.hex
}
