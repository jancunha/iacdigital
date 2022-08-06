terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_bd2da5e99e2ea65457d6c1eefbbb112b7603af7636d888009e5ef9c4cad89bfb"
}

resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name   = "k8s-iniciativa"
  region = "nyc1"
  version = "1.23.9-do.0"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-4gb"
    node_count = 3
  }
}