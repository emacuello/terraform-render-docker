resource "render_web_service" "web" {
  name   = "terraform-web-service"
  plan   = "standard"
  region = "oregon"

  runtime_source = {
    docker = {
      image    = "render-examples/express-hello-world"
      repo_url = "https://github.com/render-examples/express-hello-world.git"
      branch   = "main"
    }
  }
  secret_files = {
    ".env.development" = { content = var.env_file_content }
  }
}
