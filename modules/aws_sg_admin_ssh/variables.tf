variable "admin_ips" {
  description = "les ip's des admins"
  default     = ["8.8.8.8", "1.1.1.1"]
}

variable "mon_ip" {
  description = "mon ip a moa"
  type        = string
  default     = "86.246.169.34"
}

variable "dns_ip" {
  description = "récupération de l'IP DNS"
  type = string
  default = ${google_addrs}
}
