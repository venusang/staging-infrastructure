# Staging Infrastructure - Run #43
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_43" {
  byte_length = 8
}

output "run_number" {
  value = "43"
}

output "run_id_43" {
  value = random_id.run_43.hex
}
