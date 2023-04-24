resource "google_service_account" "github-gar-sa" {
  account_id   = "github-gar"
  display_name = "Github Actions GAR SA"
  description  = "Service account for using Google Artifact Registry on GitHub Actions"
}

resource "google_project_iam_member" "github_token_creator" {
  project = var.project
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = "serviceAccount:${google_service_account.github-gar-sa.email}"
}
resource "google_project_iam_member" "github_act_sa" {
  project = var.project
  role    = "roles/artifactregistry.writer"
  member  = "serviceAccount:${google_service_account.github-gar-sa.email}"
}

resource "google_project_iam_member" "storage_reader" {
  project = var.project
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.github-gar-sa.email}"
}
resource "google_service_account_key" "key" {
  service_account_id = google_service_account.github-gar-sa.name
}

resource "kubernetes_secret" "google-api-creds" {
  metadata {
    name = "google-api-creds"
  }
  data = {
    "creds.json" = base64decode(google_service_account_key.key.private_key)
  }
}
resource "google_artifact_registry_repository" "my-repo" {
  provider      = google-beta
  project       = var.project
  location      = var.region
  repository_id = "chonky-repository"
  format        = "DOCKER"
}
