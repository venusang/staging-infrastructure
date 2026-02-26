# Staging Infrastructure - Run #42
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_42" {
  byte_length = 8
}

output "run_number" {
  value = "42"
}

output "run_id_42" {
  value = random_id.run_42.hex
}
