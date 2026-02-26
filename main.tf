# Staging Infrastructure - Run #37
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_37" {
  byte_length = 8
}

output "run_number" {
  value = "37"
}

output "run_id_37" {
  value = random_id.run_37.hex
}
