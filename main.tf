# Staging Infrastructure - Run #54
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_54" {
  byte_length = 8
}

output "run_number" {
  value = "54"
}

output "run_id_54" {
  value = random_id.run_54.hex
}
