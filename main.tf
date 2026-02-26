# Staging Infrastructure - Run #32
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_32" {
  byte_length = 8
}

output "run_number" {
  value = "32"
}

output "run_id_32" {
  value = random_id.run_32.hex
}
