# Staging Infrastructure - Run #82
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_82" {
  byte_length = 8
}

output "run_number" {
  value = "82"
}

output "run_id_82" {
  value = random_id.run_82.hex
}
