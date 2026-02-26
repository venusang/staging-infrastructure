# Staging Infrastructure - Run #17
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_17" {
  byte_length = 8
}

output "run_number" {
  value = "17"
}

output "run_id_17" {
  value = random_id.run_17.hex
}
