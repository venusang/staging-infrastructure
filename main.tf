# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

terraform {
  required_version = ">= 1.5.0"
}

# This will cause an error - referencing non-existent resource
output "broken" {
  value = random_pet.does_not_exist.id
}

# Example: Random resource to demonstrate the workspace is working
resource "random_pet" "example" {
  length = 3
}

# Add another resource
resource "random_string" "example" {
  length  = 16
  special = false
}

output "example_pet_name" {
  value       = random_pet.example.id
  description = "A randomly generated pet name"
}

output "example_string" {
  value       = random_string.example.result
  description = "A random string"
}

