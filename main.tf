# Staging Infrastructure - Run #47
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_47" {
  byte_length = 8
}

output "run_number" {
  value = "47"
}

output "run_id_47" {
  value = random_id.run_47.hex
}
