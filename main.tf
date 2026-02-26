# Staging Infrastructure - Run #35
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_35" {
  byte_length = 8
}

output "run_number" {
  value = "35"
}

output "run_id_35" {
  value = random_id.run_35.hex
}
