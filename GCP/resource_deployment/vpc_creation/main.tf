# create vpc

resource "google_compute_network" "vpc_network" {
  name = "tf-vpc"
  auto_create_subnetworks = true
  # mtu = 1460  #optional
}


# create a basic configuration compute instance

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {

    }
  }

}