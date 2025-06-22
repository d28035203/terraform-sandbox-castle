terraform {
  required_version = ">= 1.5.0"
  backend "local" { path = "terraform.tfstate" }
}
resource "random_pet" "castle" { length = 2 }
resource "null_resource" "plaque" {
  triggers = { name = random_pet.castle.id }
  provisioner "local-exec" {
    command = "echo Built castle: ${random_pet.castle.id}"
  }
}
output "castle_name" { value = random_pet.castle.id }
