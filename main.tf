# Staging Infrastructure - Run #93
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_93" {
  byte_length = 8
}

output "run_number" {
  value = "93"
}

output "run_id_93" {
  value = random_id.run_93.hex
}
