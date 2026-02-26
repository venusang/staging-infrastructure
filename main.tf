# Staging Infrastructure - Run #44
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_44" {
  byte_length = 8
}

output "run_number" {
  value = "44"
}

output "run_id_44" {
  value = random_id.run_44.hex
}
