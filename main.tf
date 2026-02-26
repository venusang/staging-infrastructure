# Staging Infrastructure - Run #9
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_9" {
  byte_length = 8
}

output "run_number" {
  value = "9"
}

output "run_id_9" {
  value = random_id.run_9.hex
}
