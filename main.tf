# Staging Infrastructure - Run #46
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_46" {
  byte_length = 8
}

output "run_number" {
  value = "46"
}

output "run_id_46" {
  value = random_id.run_46.hex
}
