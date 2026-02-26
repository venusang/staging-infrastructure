# Staging Infrastructure - Run #76
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_76" {
  byte_length = 8
}

output "run_number" {
  value = "76"
}

output "run_id_76" {
  value = random_id.run_76.hex
}
