resource "google_sql_database" "database" {
  name     = "chonkers"
  instance = google_sql_database_instance.instance-main.name
}

resource "google_sql_database_instance" "instance-main" {
  name             = "chonky-db-instance"
  region           = "europe-north1"
  database_version = "POSTGRES_14"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = true
}

resource "google_sql_user" "users" {
  name     = var.dbuser
  instance = google_sql_database_instance.instance-main.name
  password = var.dbpassword
}
