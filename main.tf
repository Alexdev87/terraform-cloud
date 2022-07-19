terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
resource "yandex_compute_instance" "vm-1" {
  name = "terraform1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd807ed79a4kkqfvd1mb"
    }
  }

  network_interface {
    subnet_id = "e9bja5kh4rk6l69drhp4"
    nat       = true
  }

}

resource "yandex_compute_instance" "vm-2" {
  name = "terraform2"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd807ed79a4kkqfvd1mb"
    }
  }

  network_interface {
    subnet_id = "e9bja5kh4rk6l69drhp4"
    nat       = true
  }

}