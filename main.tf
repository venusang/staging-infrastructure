# Staging Infrastructure - Run #33
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_33" {
  byte_length = 8
}

output "run_number" {
  value = "33"
}

output "run_id_33" {
  value = random_id.run_33.hex
}
