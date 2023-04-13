resource "google_storage_bucket" "default" {
  name          = "jch-terraform-state"
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

resource "google_storage_bucket" "static" {
  name          = "jch-chonkers-static-assets"
  location      = "EU"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "assets" {
  for_each = fileset("${path.module}/../static/", "**")
  source   = "../static/${each.value}"
  name     = each.value
  bucket   = google_storage_bucket.static.name
}
