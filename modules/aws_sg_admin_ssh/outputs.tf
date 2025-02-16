output "sg_id" {
  description = "création de l'ID du groupe de sécurité"
  value = aws_security_group.admin_ssh.id
}

output "google_addrs" {
  value = join(",", data.dns_a_record_set.google.addrs)
}