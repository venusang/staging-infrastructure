# Staging Infrastructure - Error Test Run
terraform {
  required_version = ">= 1.5.0"
}

resource "random_pet" "example" {
  length = 3
}

# This will cause an error
output "broken_ref" {
  value = random_pet.nonexistent.id
}
