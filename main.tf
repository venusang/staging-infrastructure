# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

terraform {
  required_version = ">= 1.5.0"
}

# Example: Random resource to demonstrate the workspace is working
resource "random_pet" "example" {
  length = 4  # Changed from 3 to 4
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

# Another test resource
resource "random_uuid" "test2" {
}

# One more test resource
resource "random_password" "test3" {
  length  = 16
  special = true
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

output "test2_uuid" {
  value = random_uuid.test2.result
}

output "test3_password" {
  value     = random_password.test3.result
  sensitive = true
}

