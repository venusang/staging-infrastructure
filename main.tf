# Staging Infrastructure - Run #49
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_49" {
  byte_length = 8
}

output "run_number" {
  value = "49"
}

output "run_id_49" {
  value = random_id.run_49.hex
}
