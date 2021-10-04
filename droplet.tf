/*
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = "6e47b74478bbd0f1353e2185b2820c279243cf47dfe4659352b3dcfdc8477394"

}

resource "digitalocean_droplet" "mydroplet" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}
*/
