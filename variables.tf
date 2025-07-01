variable "project_name" {
  type        = string
  description = "Human-readable project label written into local files"
  default     = "sandbox-castle"
}

variable "pet_length" {
  type        = number
  description = "Words in the random pet name"
  default     = 2
}
