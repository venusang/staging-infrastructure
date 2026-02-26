# Staging Infrastructure - Run #98
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_98" {
  byte_length = 8
}

output "run_number" {
  value = "98"
}

output "run_id_98" {
  value = random_id.run_98.hex
}
