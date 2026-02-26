# Staging Infrastructure - Run #58
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_58" {
  byte_length = 8
}

output "run_number" {
  value = "58"
}

output "run_id_58" {
  value = random_id.run_58.hex
}
