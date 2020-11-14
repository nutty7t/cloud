resource "digitalocean_kubernetes_cluster" "nuttycluster" {
  name    = "nuttycluster"
  version = "1.16.6-do.0"
  region  = "sfo2"

  node_pool {
    name       = "nuttycluster-pool"
    size       = "s-4vcpu-8gb"
    node_count = 1
  }
}