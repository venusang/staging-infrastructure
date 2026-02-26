# Staging Infrastructure - Run #92
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_92" {
  byte_length = 8
}

output "run_number" {
  value = "92"
}

output "run_id_92" {
  value = random_id.run_92.hex
}
