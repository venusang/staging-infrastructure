# Staging Infrastructure - Run #15
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_15" {
  byte_length = 8
}

output "run_number" {
  value = "15"
}

output "run_id_15" {
  value = random_id.run_15.hex
}
