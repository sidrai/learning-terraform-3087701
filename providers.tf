terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # You can specify the version you need
    }
  }

  required_version = ">= 1.0.0"
}

#provider "google" {
#  credentials = file("/home/siddharth_rai/tfgcpassign-2447c81543d0.json")
  
  # Specify your project ID and region
#  project = "tfGcpAssign"
#  region  = "us-central1" # You can specify the region you prefer
  
  # Optionally, you can specify the zone
#  zone    = "us-central1-a"
#}
