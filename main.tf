# Staging Infrastructure - Run #94
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_94" {
  byte_length = 8
}

output "run_number" {
  value = "94"
}

output "run_id_94" {
  value = random_id.run_94.hex
}
