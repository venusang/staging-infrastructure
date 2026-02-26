# Staging Infrastructure - Run #65
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_65" {
  byte_length = 8
}

output "run_number" {
  value = "65"
}

output "run_id_65" {
  value = random_id.run_65.hex
}
