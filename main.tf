# Staging Infrastructure - Run #73
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_73" {
  byte_length = 8
}

output "run_number" {
  value = "73"
}

output "run_id_73" {
  value = random_id.run_73.hex
}
