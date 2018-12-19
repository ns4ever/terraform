
provider "google" {

  project     = "iron-mountain-219809"
  region      = "us-east4"
}



resource "google_compute_network" "vpc" {
 name                    = "testabc"
 auto_create_subnetworks = "false"
routing_mode = "GLOBAL"
}




