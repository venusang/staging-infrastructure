# Staging Infrastructure
# Long-running operations for testing Running status

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# This will take a long time to run
resource "null_resource" "long_running" {
  provisioner "local-exec" {
    command = "sleep 300"  # Sleep for 5 minutes
  }
}

resource "random_pet" "example" {
  length = 3
}

output "status" {
  value = "This run will take 5 minutes"
}

