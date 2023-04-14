variable "project" {
  description = "The GCP Project ID to deploy to."
}
variable "location" {
  default     = "europe-north1-a"
  description = "The GCP zone to deploy to."
}
variable "cluster_name" {
  default     = "chonky-gke"
  description = "The name of the Kubernetes cluster and the prefix for the additional resources."
}

variable "region" {
  default     = "europe-north1"
  description = "The GCP region to deploy to."
}
