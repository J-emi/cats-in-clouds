resource "google_compute_network" "vpc" {
  name                    = "chonky-net"
  auto_create_subnetworks = true
}

resource "google_artifact_registry_repository" "my-repo" {
  provider      = google-beta
  project       = var.project
  location      = var.region
  repository_id = "chonky-repository"
  format        = "DOCKER"
}
