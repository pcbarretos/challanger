resource "random_string" "suffix" {
  length  = 6
  special = false
}

resource "kubernetes_namespace" "ingress-external" {
  metadata {
    name = "ingress-external"
  }
}

resource "helm_release" "nginx_ingress" {
  name       = "external"
  repository = var.ingress_chart
  chart      = "ingress-nginx"
  namespace  = "ingress-external"
  version    = var.ingress_version

    values = [
      "${file("./values/external.yaml")}"
    ]


  depends_on = [
    module.eks

  ]
}
