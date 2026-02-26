# Staging Infrastructure - Run #99
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_99" {
  byte_length = 8
}

output "run_number" {
  value = "99"
}

output "run_id_99" {
  value = random_id.run_99.hex
}
