resource "google_compute_network" "vpc" {
  name                    = "chonky-net"
  auto_create_subnetworks = true
}
