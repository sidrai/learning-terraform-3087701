provider "google" {
  # Configure the Google Cloud provider
  credentials = file("/home/siddharth_rai/tfgcpassign-2447c81543d0.json")
  project     = "tfGcpAssign"
  region      = "us-central1"
}

data "google_compute_image" "debian" {
  family  = "debian-11"
  project = "debian-cloud"
}

resource "google_compute_instance" "web" {
  name         = "HelloWorld-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  tags = ["HelloWorld"]
}
