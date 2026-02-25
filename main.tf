# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

terraform {
  required_version = ">= 1.5.0"
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

# New resource for testing multiple runs
resource "random_id" "test1" {
  byte_length = 8
}

output "example_pet_name" {
  value       = random_pet.example.id
  description = "A randomly generated pet name"
}

output "example_string" {
  value       = random_string.example.result
  description = "A random string"
}

output "test1_id" {
  value = random_id.test1.hex
}

# This will cause an error - referencing non-existent resource
output "broken_reference" {
  value = random_string.does_not_exist.result
}

