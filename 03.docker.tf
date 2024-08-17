resource "render_web_service" "web" {
  name   = "terraform-web-service"
  plan   = "free"
  region = "oregon"

  runtime_source = {
    docker = {
      image = "render-examples/express-hello-world"
    }
  }
  secret_files = {
    ".env.development" = { content = var.env_file_content }
  }
}
