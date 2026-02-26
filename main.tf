# Staging Infrastructure - Run #19
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

resource "random_id" "run_19" {
  byte_length = 8
}

output "run_number" {
  value = "19"
}

output "run_id_19" {
  value = random_id.run_19.hex
}
