# Staging Infrastructure - Run #18
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_18" {
  byte_length = 8
}

output "run_number" {
  value = "18"
}

output "run_id_18" {
  value = random_id.run_18.hex
}
