resource "google_project_iam_member" "k8s_admin" {
  project = var.project
  role    = "roles/container.clusterAdmin"
  member  = "serviceAccount:${google_service_account.github-gar-sa.email}"
}

resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  project                  = var.project
  location                 = var.location
  initial_node_count       = 1
  remove_default_node_pool = true
}

resource "google_container_node_pool" "linux_pool" {
  project            = google_container_cluster.primary.project
  cluster            = google_container_cluster.primary.name
  location           = google_container_cluster.primary.location
  initial_node_count = 2
  node_config {
    image_type      = "COS_CONTAINERD"
    machine_type    = "e2-small"
    disk_size_gb    = 30
    service_account = google_service_account.github-gar-sa.email
  }
}
data "google_client_config" "provider" {}
provider "kubernetes" {
  host  = google_container_cluster.primary.endpoint
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    data.google_container_cluster.primary.master_auth[0].cluster_ca_certificate,
  )
}

resource "kubernetes_deployment" "chonkers" {
  metadata {
    name = "chonkers"
    labels = {
      app = "chonkers"
    }
  }

  spec {
    replicas = google_container_node_pool.linux_pool.initial_node_count

    selector {
      match_labels = {
        app = "chonkers"
      }
    }

    template {
      metadata {
        labels = {
          app = "chonkers"
        }
      }

      spec {
        container {
          image = "${var.region}-docker.pkg.dev/${google_container_cluster.primary.project}/${google_artifact_registry_repository.my-repo.repository_id}/chonkers-service"
          name  = "chonkers"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}
