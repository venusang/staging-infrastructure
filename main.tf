# Staging Infrastructure - Run #52
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_52" {
  byte_length = 8
}

output "run_number" {
  value = "52"
}

output "run_id_52" {
  value = random_id.run_52.hex
}
