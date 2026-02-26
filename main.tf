# Staging Infrastructure - Run #81
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_81" {
  byte_length = 8
}

output "run_number" {
  value = "81"
}

output "run_id_81" {
  value = random_id.run_81.hex
}
