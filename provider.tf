provider "helm" {
  kubernetes {
    token                  = data.google_client_config.client.access_token
    host                   = data.google_container_cluster.gke.endpoint
    cluster_ca_certificate = base64decode(data.google_container_cluster.gke.master_auth[0].cluster_ca_certificate)
  }
}
