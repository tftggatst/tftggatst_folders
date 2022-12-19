resource "google_compute_instance" "default" {
  name         = "tftggatst"
  machine_type = "e2-micro"
  zone         = "us-west1-a"
  project = "sandbox1-372116"

  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  
    }
  }

  labels = {
    environment                = "test1"
    month = "december"
  }

  network_interface {
    network = "default"

    //access_config {
      // Ephemeral public IP
    //}
  }
  
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "857526710636-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}