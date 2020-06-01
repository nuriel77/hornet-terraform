resource "hcloud_server" "hornet" {
  count         = var.vps_count
  name          = format("hornet-%s", count.index)
  image         = var.vps_image
  server_type   = var.vps_type
  ssh_keys      = var.vps_ssh_key
  location      = var.vps_location

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "root"
      host     = self.ipv4_address
    }

    script      = "provision.sh"
  }
}

output "ip_addresses" {
  value = hcloud_server.hornet.*.ipv4_address
}
