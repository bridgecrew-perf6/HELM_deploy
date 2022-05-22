resource "helm_release" "elasticsearch" {
  name       = "elasticsearch"
  repository = "https://helm.elastic.co"
  chart      = "elasticsearch"
  version    = "6.8.14"
  timeout    = 900

  set {
    name  = "volumeClaimTemplate.storageClassName"
    value = "elasticsearch-ssd"
  }

  set {
    name  = "volumeClaimTemplate.resources.requests.storage"
    value = "5Gi"
  }

  set {
    name  = "imageTag"
    value = "6.8.14"
  }
}
