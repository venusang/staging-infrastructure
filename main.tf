# Staging Infrastructure - Run #11
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_11" {
  byte_length = 8
}

output "run_number" {
  value = "11"
}

output "run_id_11" {
  value = random_id.run_11.hex
}
