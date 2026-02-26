# Staging Infrastructure - Run #77
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_77" {
  byte_length = 8
}

output "run_number" {
  value = "77"
}

output "run_id_77" {
  value = random_id.run_77.hex
}
