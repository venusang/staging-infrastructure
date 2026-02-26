# Staging Infrastructure - Run #41
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_41" {
  byte_length = 8
}

output "run_number" {
  value = "41"
}

output "run_id_41" {
  value = random_id.run_41.hex
}
