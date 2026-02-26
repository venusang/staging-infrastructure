# Staging Infrastructure - Run #3
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_3" {
  byte_length = 8
}

output "run_number" {
  value = "3"
}

output "run_id_3" {
  value = random_id.run_3.hex
}
