output "vpcName" {
  value = "${google_compute_network.vpc.name}"
}
output "subnetName" {
  value = "${join(",",google_compute_subnetwork.subnet.*.name)}"
}
