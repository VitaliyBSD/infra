terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_network" "lab" {
  name      = "lab"
  autostart = true
  addresses = ["10.0.0.0/8"]
}

resource "libvirt_pool" "libvirt" {
  name = "libvirt"
  type = "dir"
  path = "/srv/libvirt"
}
