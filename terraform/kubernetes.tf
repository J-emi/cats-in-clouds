resource "google_project_iam_member" "k8s_admin" {
  project = var.project
  role    = "roles/container.admin"
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
    google_container_cluster.primary.master_auth[0].cluster_ca_certificate,
  )
}

