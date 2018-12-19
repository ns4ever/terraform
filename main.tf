provider "google" {
  credentials = "${file('https://github.com/ns4ever/terraform/blob/master/iron-mountain-219809-2306b39c7557.json')}"
  project     = "${var.project}"
  region      = "${var.region}"
}



resource "google_compute_network" "vpc" {
 name                    = "${var.vpcname}"
 auto_create_subnetworks = "false"
routing_mode = "${var.routing_mode}"
}




