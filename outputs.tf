output "castle_name" {
  description = "Random pet name for this apply"
  value       = random_pet.castle.id
}

output "plaque_path" {
  description = "Local file written by the stack"
  value       = local_file.plaque.filename
}
