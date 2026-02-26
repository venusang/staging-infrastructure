# Staging Infrastructure - Run #53
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_53" {
  byte_length = 8
}

output "run_number" {
  value = "53"
}

output "run_id_53" {
  value = random_id.run_53.hex
}
