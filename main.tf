# Staging Infrastructure - Run #7
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_7" {
  byte_length = 8
}

output "run_number" {
  value = "7"
}

output "run_id_7" {
  value = random_id.run_7.hex
}
