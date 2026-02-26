# Staging Infrastructure - Run #21
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_21" {
  byte_length = 8
}

output "run_number" {
  value = "21"
}

output "run_id_21" {
  value = random_id.run_21.hex
}
