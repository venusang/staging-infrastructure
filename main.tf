# Staging Infrastructure - Run #24
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_24" {
  byte_length = 8
}

output "run_number" {
  value = "24"
}

output "run_id_24" {
  value = random_id.run_24.hex
}
