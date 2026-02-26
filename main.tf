# Staging Infrastructure - Run #31
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_31" {
  byte_length = 8
}

output "run_number" {
  value = "31"
}

output "run_id_31" {
  value = random_id.run_31.hex
}
