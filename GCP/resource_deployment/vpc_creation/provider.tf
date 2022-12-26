terraform {
    required_version = ">=1.1.6"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
  }
}

provider "google" {
    # Configuration options
    credentials = file(var.credentials_file)
    project =  var.project # project id
    region = var.region
    zone = var.zone
}