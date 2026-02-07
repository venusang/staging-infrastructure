# Staging Infrastructure
# This is a simple example - add your actual infrastructure resources here

terraform {
  required_version = ">= 1.5.0"
}

# Example: Random resource to demonstrate the workspace is working
resource "random_pet" "example" {
  length = 2
}

output "example_pet_name" {
  value       = random_pet.example.id
  description = "A randomly generated pet name"
}
