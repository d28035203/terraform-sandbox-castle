terraform {
  required_version = ">= 1.5.0"

  # Local backend keeps this playground bill-free and offline-friendly.
  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "random_pet" "castle" {
  length = var.pet_length
}

resource "local_file" "plaque" {
  filename = "${path.module}/generated/plaque.txt"
  content  = <<-EOT
    project = ${var.project_name}
    castle  = ${random_pet.castle.id}
    built   = keep state out of git
  EOT
}

resource "null_resource" "announce" {
  triggers = {
    name = random_pet.castle.id
  }

  provisioner "local-exec" {
    command = "echo Built ${var.project_name}: ${random_pet.castle.id}"
  }
}
