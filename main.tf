# Staging Infrastructure - Run #61
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_61" {
  byte_length = 8
}

output "run_number" {
  value = "61"
}

output "run_id_61" {
  value = random_id.run_61.hex
}
