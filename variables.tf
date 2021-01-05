#########################################
############# Variables #################
#########################################

variable "cft_name" {
    description = "Name of the CFT Resource"
    type        = string 
    default     = "CP-GWLB"
}

variable "availability_zones" {
    description = "The Availability Zones (AZs) to use for the created subnets in the VPC - Minimum 2"
    type        = string
    default     = "us-west-2a,us-west-2b"  
}

variable "az_number" {
    description = "Number of Availability Zones to use in the VPC"
    type        = number
    default     = "2"
}

variable "gwlbvpc_cidr" {
    description = "CIDR block of the created VPC"
    type        = string 
    default     = "10.0.0.0/16"
}

variable "asg_public1" {
    description = "CIDR block for public subnet in AZ1"
    type        = string
    default     = "10.0.10.0/24"
}

variable "asg_public2" {
    description = "CIDR block for public subnet in AZ2"
    type        = string 
    default     = "10.0.20.0/24"
}
/*
variable "asg_public3" {
    description = "CIDR block for public subnet in AZ3"
    type        = string
    default     = "" 
}

variable "asg_public4" {
    description = "CIDR block for public subnet in AZ4"
    type        = string
    default     = "" 
}
*/

variable "tgw_subnet1" {
    description = "CIDR block for TGW subnet in AZ1"
    type        = string
    default     = "10.0.1.0/24"
}

variable "tgw_subnet2" {
    description = "CIDR block for TGW subnet in AZ2"
    type        = string
    default     = "10.0.2.0/24"
}
/*
variable "tgw_subnet3" {
    description = "CIDR block for TGW subnet in AZ3"
    type        = string
    default     = ""
}

variable "tgw_subnet4" {
    description = "CIDR block for TGW subnet in AZ4"
    type        = string
    default     = ""
}
*/
variable "natgw_subnet1" {
    description = "CIDR block for NATGW subnet in AZ1"
    type        = string
    default     = "10.0.5.0/24"
}

variable "natgw_subnet2" {
    description = "CIDR block for NATGW subnet in AZ2"
    type        = string 
    default     = "10.0.6.0/24"
}
/*
variable "natgw_subnet3" {
    description = "CIDR block for NATGW subnet in AZ3"
    type        = string 
    default     = ""
}

variable "natgw_subnet4" {
    description = "CIDR block for NATGW subnet in AZ4"
    type        = string
    default     = ""
}
*/
variable "gwlbe_subnet1" {
    description = "CIDR block for GWLBe subnet in AZ1"
    type        = string
    default     = "10.0.3.0/24"
}

variable "gwlbe_subnet2" {
    description = "CIDR block for GWLBe subnet in AZ2"
    type        = string 
    default     = "10.0.4.0/24"
}
/*
variable "gwlbe_subnet3" {
    description = "CIDR block for GWLBe subnet in AZ3"
    type        = string
    default     = ""
}

variable "gwlbe_subnet4" {
    description = "CIDR block for GWLBe subnet in AZ4"
    type        = string
    default     = ""
}
*/
 variable "provision_tag" {
    description = "Tag used by the CME to autoprovision the Security Gateways"
    type        = string
    default     = "cpgwlb"  
 }

variable "key_name" {
    description = "EC2 Key Pair to SSH into the instances"
    type        = string
    default     = "gwlbdemo"
}

variable "gwlb_name" {
    description = ""
    type        = string
    default     = "Chkp-GWLB"
}

variable "tg_name" {
    description = "Target Group Name"
    type        = string
    default     = "chkp-tg"
}

variable "health_port" {
    description = "Port Used by the GWLB to perform health checks on targets// 80,443 or TCP "
    type        = number
    default     = "443"
}

variable "health_protocol" {
    description = "Protocol Used by the GWLB to perform health checks on targets. Should be TCP, HTTP or HTTPS "
    type        = string
    default     = "HTTPS"
}

variable "crossaz_lb" {
    description = "Select 'true' to enable cross-az load balancing"
    type        = string
    default     = "true" 
}

variable "cloudwatch" {
    description = "True/False to create Check Point specific CloudWatch metrics"
    type        = string
    default     = "true"
}

variable "mgmt_version" {
    description = "Security Management Server Version - Only R80.40-BYOL or R80.40-PAYG ATM"
    type        = string
    default     = "R80.40-BYOL"
}

variable "gateway_policy" {
    description = "Security Policy Name to manage CHKP ASG - Should map value of CME -po flag"
    type        = string 
    default     = "AWS-Southbound"
}

variable "gateway_management" {
    description = "Over the internet or Locally Managed if reacheable over private IPs"
    type        = string 
    default     = "Over the internet"
}

variable "gateway_name" {
    description = "Name tag of the Security Gateway instances"
    type        = string
    default     = "chkp-gwlb"
}

variable "instance_type" {
    description = "EC2 instance type for the Check Point Security Gateways"
    type        = string
    default     = "c5.large"
}

variable "password_hash" {
    description = "Admin user's password hash"
    type        = string
    default     = "$1$5b8270b8$XTwkTQUC.Ddce5rSALyBj/"
}

variable "gateway_sic" {
    description = "Secure Internal Communication for Mgmt and GW trusted connections"
    type        = string
    default     = "vpn123vpn123"
}

variable "gateway_control" {
    description = "Public or Private determines if the gateways are provisioned using their private or public address"
    type        = string
    default     = "public"
}

variable "tgw_name" {
    description = "Name of the created TGW"
    type        = string
    default     = "GWLB-TGW"
}