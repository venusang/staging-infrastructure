# Staging Infrastructure - Run #89
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_89" {
  byte_length = 8
}

output "run_number" {
  value = "89"
}

output "run_id_89" {
  value = random_id.run_89.hex
}
