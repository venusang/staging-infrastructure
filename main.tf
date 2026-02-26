# Staging Infrastructure - Run #29
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_29" {
  byte_length = 8
}

output "run_number" {
  value = "29"
}

output "run_id_29" {
  value = random_id.run_29.hex
}
