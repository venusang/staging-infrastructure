# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

terraform {
  required_version = ">= 1.5.0"
}

# Example: Random resource to demonstrate the workspace is working
resource "random_pet" "example" {
  length = 3  # Changed from 2 to 3 - this will trigger a replacement
}

# Add another resource to show multiple changes
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
