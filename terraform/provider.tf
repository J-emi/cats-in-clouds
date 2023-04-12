provider "google" {
  project = "winged-plate-378113"
  region  = "europe-north1"
  zone    = "europe-north1-a"

  credentials = file("./creds.json")
}
