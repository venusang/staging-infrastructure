# Staging Infrastructure - Run #66
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_66" {
  byte_length = 8
}

output "run_number" {
  value = "66"
}

output "run_id_66" {
  value = random_id.run_66.hex
}
