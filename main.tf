# Staging Infrastructure - Run #2
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_2" {
  byte_length = 8
}

output "run_number" {
  value = "2"
}

output "run_id_2" {
  value = random_id.run_2.hex
}
