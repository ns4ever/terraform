provider "google" {
  credentials = "${file("https://github.com/ns4ever/terraform/blob/master/iron-mountain-219809-2306b39c7557.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}



resource "google_compute_network" "vpc" {
 name                    = "${var.vpcname}"
 auto_create_subnetworks = "false"
routing_mode = "${var.routing_mode}"
}

// Create Subnet
resource "google_compute_subnetwork" "subnet" {
count =  "${var.noofsubnet}"
 name          ="${element(var.subnet_name,count.index)}"
 ip_cidr_range =  "${element(var.subnet_cidr,count.index)}"
 network       = "${var.vpcname}"
 depends_on    = ["google_compute_network.vpc"]
 region      = "${var.region}"
private_ip_google_access = "${var.private_ip_google_access}"
}


