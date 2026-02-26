# Staging Infrastructure - Run #87
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_87" {
  byte_length = 8
}

output "run_number" {
  value = "87"
}

output "run_id_87" {
  value = random_id.run_87.hex
}
