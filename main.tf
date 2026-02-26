# Staging Infrastructure - Run #97
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_97" {
  byte_length = 8
}

output "run_number" {
  value = "97"
}

output "run_id_97" {
  value = random_id.run_97.hex
}
