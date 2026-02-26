# Staging Infrastructure - Run #86
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_86" {
  byte_length = 8
}

output "run_number" {
  value = "86"
}

output "run_id_86" {
  value = random_id.run_86.hex
}
