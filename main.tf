# Staging Infrastructure - Run #27
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_27" {
  byte_length = 8
}

output "run_number" {
  value = "27"
}

output "run_id_27" {
  value = random_id.run_27.hex
}
