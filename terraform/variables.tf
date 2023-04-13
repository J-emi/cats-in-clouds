
variable "dbuser" {
  type        = string
  default     = "catmaster"
  description = "Google SQL database user"
}

variable "dbpassword" {
  type        = string
  description = "Google SQL database user's password"
}

variable "project" {
  description = "The GCP Project ID to deploy to."
}
variable "location" {
  default     = "europe-north1-a"
  description = "The GCP region to deploy to."
}
variable "cluster_name" {
  default     = "chonky-gke"
  description = "The name of the Kubernetes cluster and the prefix for the additional resources."
}
