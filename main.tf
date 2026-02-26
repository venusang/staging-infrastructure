# Staging Infrastructure - Run #48
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_48" {
  byte_length = 8
}

output "run_number" {
  value = "48"
}

output "run_id_48" {
  value = random_id.run_48.hex
}
