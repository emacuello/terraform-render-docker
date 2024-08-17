variable "RENDER_API_KEY" {
  description = "Clave de API de Render"
  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}
variable "env_file_content" {
  default = file(".env")
}

variable "RENDER_OWNER_ID" {
  description = "The owner ID for Render"
  type        = string
}
