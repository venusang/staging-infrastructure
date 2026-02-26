# Staging Infrastructure - Run #39
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_39" {
  byte_length = 8
}

output "run_number" {
  value = "39"
}

output "run_id_39" {
  value = random_id.run_39.hex
}
