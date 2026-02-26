# Staging Infrastructure - Run #55
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_55" {
  byte_length = 8
}

output "run_number" {
  value = "55"
}

output "run_id_55" {
  value = random_id.run_55.hex
}
