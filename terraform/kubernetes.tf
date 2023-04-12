resource "google_container_cluster" "primary" {
  name                     = "chonky-gke"
  project                  = "winged-plate-378113"
  location                 = "europe-north1-a"
  initial_node_count       = 1
  remove_default_node_pool = true
}

resource "google_container_node_pool" "linux_pool" {
  project            = google_container_cluster.primary.project
  cluster            = google_container_cluster.primary.name
  location           = google_container_cluster.primary.location
  initial_node_count = 2
  node_config {
    machine_type = "e2-small"
    disk_size_gb = 30
  }
}
