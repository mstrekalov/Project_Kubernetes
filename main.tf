provider "google" {
  credentials = file("credentials.json")
  project = "Kefir"
  region  = "us-central1"
}
resource "google_compute_instance" "web" {
  name         = "kefir-instance"
  machine_type = "f1-micro"
  zone         = "us-west1-a"
}

resource "google_cloud_run_service" "default" {
  name     = "cloudrun-kefir"
  location = "europe-west2"

  template {
    spec {
      containers {
        image = "mstrekalov/kefir:latest"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}