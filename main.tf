# Staging Infrastructure - Run #75
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_75" {
  byte_length = 8
}

output "run_number" {
  value = "75"
}

output "run_id_75" {
  value = random_id.run_75.hex
}
