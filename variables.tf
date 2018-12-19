variable "region" {
    description = "The region to deploy to, if not set the default region is used."
    default     = "us-east4"
}
variable "project" {
    description = "The project to deploy to, if not set the default provider project is used."
    default     = "irm-fisma-gov-prod"
}
variable "vpcname" {
    description = "The name to use for VPC, if not set the default name is used."
}
variable "routing_mode" {
    description = "VPC routing mode"
   default = "GLOBAL"
}
variable "noofsubnet" {
    description = "noofsubnet"
   default =2
}
variable "subnet_name" {
    type = "list"
    description = "The subnet name that are postifx after vpc name"

}

variable "subnet_cidr" {
    type = "list"
    description = "CIDR range of subnets"
}

variable "private_ip_google_access" {
    description = "Private ip for google access"
 default     = "false"
}
variable "enable_flow_logs" {
    description = "Enable flow logs"
 default     = "false"
}