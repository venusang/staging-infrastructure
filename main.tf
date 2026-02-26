# Staging Infrastructure - Run #62
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_62" {
  byte_length = 8
}

output "run_number" {
  value = "62"
}

output "run_id_62" {
  value = random_id.run_62.hex
}
