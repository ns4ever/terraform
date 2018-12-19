
provider "google" {
credentials = "${file("https://github.com/ns4ever/terraform/blob/master/iron-mountain-219809-2306b39c7557.json")}"
  project     = "iron-mountain-219809"
  region      = "us-east4"
}



resource "google_compute_network" "vpc" {
 name                    = "testabc"
 auto_create_subnetworks = "false"
routing_mode = "GLOBAL"
}




