# Staging Infrastructure - Run #91
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_91" {
  byte_length = 8
}

output "run_number" {
  value = "91"
}

output "run_id_91" {
  value = random_id.run_91.hex
}
