# Staging Infrastructure - Run #78
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_78" {
  byte_length = 8
}

output "run_number" {
  value = "78"
}

output "run_id_78" {
  value = random_id.run_78.hex
}
