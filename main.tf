terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "nodered_image" {
  name = "nodered/node-red:latest"
}
resource "docker_container" "nodered_container" {
  name  = "nodered"
  image = "nodered/node-red:latest"

  ports {
    internal = var.int_port
    external = var.ext_port
  }
}
