variable "project" {
  description = "The GCP Project ID to deploy to."
}
variable "location" {
  description = "The GCP zone to deploy to."
}
variable "cluster_name" {
  default     = "chonky-gke"
  description = "The name of the Kubernetes cluster and the prefix for the additional resources."
}
variable "region" {
  description = "The GCP region to deploy to."
}
variable "gke_credentials" {
  description = "contents of GKE service account key"
}
variable "dockertag" {}
