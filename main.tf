# Staging Infrastructure - Run #63
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_63" {
  byte_length = 8
}

output "run_number" {
  value = "63"
}

output "run_id_63" {
  value = random_id.run_63.hex
}
