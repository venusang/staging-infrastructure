# Staging Infrastructure - Run #67
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_67" {
  byte_length = 8
}

output "run_number" {
  value = "67"
}

output "run_id_67" {
  value = random_id.run_67.hex
}
