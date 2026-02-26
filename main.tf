# Staging Infrastructure - Run #12
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_12" {
  byte_length = 8
}

output "run_number" {
  value = "12"
}

output "run_id_12" {
  value = random_id.run_12.hex
}
